import 'package:fpdart/fpdart.dart';
import 'package:dio/dio.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/exception/exception_handler.dart';

abstract interface class INetworkValidator<Response, ResponseBody> {
  Either<BaseException, ResponseBody> validateBody(Response response);

  Either<BaseException, Map<String, dynamic>> validateJson(ResponseBody body);

  Either<BaseException, List<Map<String, dynamic>>> validateListOfMap(
    Map<String, dynamic> json,
  );

  Either<BaseException, Map<String, dynamic>> validateMap(
    Map<String, dynamic> json,
  );
}

class NetworkValidator implements INetworkValidator<Response, Object> {
  final ExceptionHandler _exceptionHandler;

  NetworkValidator(this._exceptionHandler);

  @override
  Either<BaseException, Object> validateBody(Response response) =>
      Either<BaseException, Response>.fromPredicate(
        response,
        (r) =>
            r.statusCode != null && r.statusCode! >= 200 && r.statusCode! < 300,
        (r) => _exceptionHandler.handle(
          DioException.badResponse(
            statusCode: r.statusCode ?? 500,
            requestOptions: r.requestOptions,
            response: r,
          ),
        ),
      ).map((a) => a.data);

  @override
  Either<BaseException, Map<String, dynamic>> validateJson(Object body) =>
      Either<BaseException, Object>.fromPredicate(
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
        (a) => Either.safeCast(
          a as Map<String, dynamic>,
          _exceptionHandler.handle,
        ),
      );

  @override
  Either<BaseException, List<Map<String, dynamic>>> validateListOfMap(
    Map<String, dynamic> json,
  ) =>
      Either<BaseException, Map<String, dynamic>>.fromPredicate(
        json,
        (r) => r['data'] is List,
        (_) => _exceptionHandler.handle(
          NetworkException(
            error: json,
            message: 'Response is not a valid List of Map',
            userMessage: 'Terjadi kesalahan pada format data',
            stackTrace: StackTrace.current,
          ),
        ),
      ).flatMap(
        (a) => Either<BaseException, List<Map<String, dynamic>>>.tryCatch(
          () => List<Map<String, dynamic>>.from(a['data']),
          _exceptionHandler.handle,
        ),
      );

  @override
  Either<BaseException, Map<String, dynamic>> validateMap(
    Map<String, dynamic> json,
  ) =>
      Either<BaseException, Map<String, dynamic>>.fromPredicate(
            json,
            (r) => r['data'] is Map<String, dynamic> || r['data'] is List,
            (r) => _exceptionHandler.handle(
              BaseException(
                error: json,
                message: 'Response is not a valid Map',
                userMessage: 'Response is not a valid Map',
                stackTrace: StackTrace.current,
              ),
            ),
          )
          .flatMap(
            (r) => Either<BaseException, dynamic>.tryCatch(() {
              if (r['data'] is List) {
                final data = (r['data'] as List);

                if (data.isEmpty) {
                  throw NetworkException(
                    error: r,
                    message: 'Data is empty',
                    userMessage: 'Data is empty',
                  );
                }

                return switch (!data.all((e) => e is Map<String, dynamic>)) {
                  true => throw NetworkException(
                    error: r,
                    message: 'Response is not a valid Map',
                    userMessage: 'Response is not a valid Map',
                  ),
                  _ => data.first,
                };
              }

              return r['data'];
            }, _exceptionHandler.handle),
          )
          .flatMap(
            (r) => Either<BaseException, Map<String, dynamic>>.safeCast(
              r as Map<String, dynamic>,
              _exceptionHandler.handle,
            ),
          );
}
