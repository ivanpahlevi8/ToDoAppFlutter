import 'package:fpdart/fpdart.dart';
import 'package:dio/dio.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/exception/exception_handler.dart';
import 'package:to_do_app_flutter/core/models/response_model.dart';

abstract interface class INetworkValidator<Response, ResponseBody> {
  Either<BaseException, ResponseBody> validateBody(Response response);

  Either<BaseException, Map<String, dynamic>> validateJson(ResponseBody body);

  Either<BaseException, Map<String, dynamic>> validateMap(
    Map<String, dynamic> json,
  );

  Either<BaseException, Map<String, dynamic>> validateSuccessResponse(
    Map<String, dynamic> response,
  );
}

class NetworkValidator implements INetworkValidator<Response, Object> {
  final ExceptionHandler _exceptionHandler;

  NetworkValidator(this._exceptionHandler);

  @override
  Either<BaseException, Object> validateBody(
    Response response,
  ) => Either<BaseException, Response>.fromPredicate(
    response,
    (r) => r.statusCode != null && r.statusCode! == 200,
    (r) {
      if (r.data is Map<String, dynamic> &&
          (r.data as Map).containsKey('message')) {
        // check if response contains message
        final errorMap = r.data as Map<String, dynamic>;
        return _exceptionHandler.handle(
          BaseException(
            error: r.data,
            message:
                "${errorMap['message']?.toString() ?? 'Unknown API Error'} Error API",
            userMessage: errorMap['message']?.toString() ?? 'Unknown API Error',
            stackTrace: StackTrace.current,
          ),
        );
      }

      // Fallback if the server didn't return your custom JSON body envelope
      return _exceptionHandler.handle(
        DioException.badResponse(
          statusCode: r.statusCode ?? 500,
          requestOptions: r.requestOptions,
          response: r,
        ),
      );
    },
  ).map((a) => a.data!);

  @override
  Either<BaseException, Map<String, dynamic>> validateJson(Object body) {
    return Either<BaseException, Object>.fromPredicate(
      body,
      (_) => body is Map<String, dynamic>,
      (_) => _exceptionHandler.handle(
        NetworkException(
          error: body,
          message: 'Response body is not a valid JSON',
          userMessage: 'Response body is not a valid JSON',
          stackTrace: StackTrace.current,
        ),
      ),
    ).flatMap(
      (a) =>
          Either.safeCast(a as Map<String, dynamic>, _exceptionHandler.handle),
    );
  }

  @override
  Either<BaseException, Map<String, dynamic>> validateMap(
    Map<String, dynamic> json,
  ) {
    // 1. Verify that the response contains your standard API envelope keys
    final hasValidEnvelope =
        json.containsKey('isSuccess') && json.containsKey('result');

    if (hasValidEnvelope) {
      // Return the WHOLE map so ResponseModel<UserModel>.fromJson can parse everything!
      return Either.right(json);
    }

    // 2. If the envelope structure is completely missing or malformed
    return Either.left(
      _exceptionHandler.handle(
        BaseException(
          error: json,
          message:
              'API response structure is invalid. Expected "isSuccess" and "result" keys.',
          userMessage: 'Received an invalid data format from the server.',
          stackTrace: StackTrace.current,
        ),
      ),
    );
  }

  @override
  Either<BaseException, Map<String, dynamic>> validateSuccessResponse(
    Map<String, dynamic> response,
  ) {
    // map to json
    ResponseModel<dynamic> dataResp = ResponseModel.fromJson(
      response,
      (valReturn) => valReturn as dynamic,
    );

    if (dataResp.isSuccess) {
      return Either.right(response);
    }

    return Either.left(
      _exceptionHandler.handle(
        BaseException(
          error: response,
          message:
              'API response structure is fail.Success return false : ${dataResp.message}',
          userMessage: 'Error from server',
          stackTrace: StackTrace.current,
        ),
      ),
    );
  }
}
