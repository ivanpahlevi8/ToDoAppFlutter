import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/exception/exception_handler.dart';

abstract interface class INetworkService<HttpResponse> {
  // function to do get request
  TaskEither<BaseException, HttpResponse> get(
    Uri uri,
    CancelToken? cancelToken, {
    Map<String, String> headers = const {},
  });

  // function to do post request
  TaskEither<BaseException, HttpResponse> post(
    Uri uri,
    CancelToken? cancelToken, {
    Map<String, String> headers = const {},
    Map<String, dynamic> body = const {},
  });

  // function to do update request
  TaskEither<BaseException, HttpResponse> update(
    Uri uri,
    CancelToken? cancelToken, {
    Map<String, String> headers = const {},
    Map<String, String> body = const {},
  });

  // fucntion to do delete request
  TaskEither<BaseException, HttpResponse> delete(
    Uri uri,
    CancelToken? cancelToken, {
    Map<String, String> headers = const {},
  });
}

class NetworkService implements INetworkService<Response> {
  final Dio dio;
  final ExceptionHandler exceptionHandler;

  NetworkService({required this.dio, required this.exceptionHandler});

  @override
  TaskEither<BaseException, Response<dynamic>> delete(
    Uri uri,
    CancelToken? cancelToken, {
    Map<String, String> headers = const {},
  }) {
    return TaskEither<BaseException, Response>.tryCatch(
      () => dio.deleteUri(
        uri,
        options: Options(
          headers: headers,
          sendTimeout: Duration(milliseconds: 10000),
          receiveTimeout: Duration(milliseconds: 10000),
        ),
        cancelToken: cancelToken,
      ),
      exceptionHandler.handle,
    );
  }

  @override
  TaskEither<BaseException, Response<dynamic>> get(
    Uri uri,
    CancelToken? cancelToken, {
    Map<String, String> headers = const {},
  }) {
    return TaskEither.tryCatch(
      () => dio.getUri(
        uri,
        options: Options(
          headers: headers,
          sendTimeout: Duration(milliseconds: 10000),
          receiveTimeout: Duration(milliseconds: 10000),
        ),
        cancelToken: cancelToken,
      ),
      exceptionHandler.handle,
    );
  }

  @override
  TaskEither<BaseException, Response<dynamic>> post(
    Uri uri,
    CancelToken? cancelToken, {
    Map<String, String> headers = const {},
    Map<String, dynamic> body = const {},
  }) {
    return TaskEither.tryCatch(
      () => dio.postUri(
        uri,
        data: headers[HttpHeaders.contentTypeHeader] == "application/json"
            ? json.encode(body)
            : body,
        options: Options(
          headers: headers,
          sendTimeout: Duration(milliseconds: 10000),
          receiveTimeout: Duration(milliseconds: 10000),
        ),
      ),
      exceptionHandler.handle,
    );
  }

  @override
  TaskEither<BaseException, Response<dynamic>> update(
    Uri uri,
    CancelToken? cancelToken, {
    Map<String, String> headers = const {},
    Map<String, String> body = const {},
  }) {
    return TaskEither.tryCatch(
      () => dio.putUri(
        uri,
        data: headers[HttpHeaders.contentTypeHeader] == "application/json"
            ? json.encode(body)
            : body,
        options: Options(
          headers: headers,
          sendTimeout: Duration(milliseconds: 10000),
          receiveTimeout: Duration(milliseconds: 10000),
        ),
      ),
      exceptionHandler.handle,
    );
  }
}
