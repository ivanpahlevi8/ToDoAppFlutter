import 'dart:io';

import 'package:dio/dio.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';

/**
 * This exception builder, is used to translate all the exception
 * that possible happen, for example network exception and storage exception
 */

abstract interface class IExceptionBuilder {
  // function to parse excetption
  BaseException parse(error, [StackTrace? stackTrace]);
}

// create excpetion builder for network exception
class NetworkExceptionBuilder implements IExceptionBuilder {
  @override
  BaseException parse(error, [StackTrace? stackTrace]) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.badResponse:
          try {
            return NetworkException(
              message: error.response?.data['message'],
              userMessage: error.response?.data['message'],
              error: error,
              stackTrace: error.stackTrace,
            );
          } catch (_) {
            final statusCode = error.response?.statusCode ?? 500;
            final statusMessage =
                error.response?.statusMessage ?? 'Server Error';

            return NetworkException(
              error: error,
              stackTrace: error.stackTrace,
              message: error.message,
              userMessage: '$statusCode: $statusMessage',
            );
          }
        default:
          return NetworkException(
            error: error,
            stackTrace: error.stackTrace,
            message: error.message,
            userMessage: error.message,
          );
      }
    }

    // not dio exception
    return NetworkException(
      error: error,
      stackTrace: error.stackTrace,
      message: error.message,
      userMessage: error.message,
    );
  }
}

class StorageExceptionBuilder implements IExceptionBuilder {
  @override
  BaseException parse(error, [StackTrace? stackTrace]) {
    switch (error) {
      // 1. Fixed the warning with '_'
      // 2. This single case automatically catches FileSystemException,
      //    SocketException, StdinException, etc.
      case IOException _:
        return StorageException(
          message: error.toString(),
          userMessage: "Exception happened on storage IO",
          stackTrace: stackTrace ?? StackTrace.current,
          error: error,
        );

      // 3. Added a fallback so the function ALWAYS returns a BaseException
      default:
        return StorageException(
          message: error.toString(),
          userMessage: "An unexpected storage error occurred",
          stackTrace: stackTrace ?? StackTrace.current,
          error: error,
        );
    }
  }
}
