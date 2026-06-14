import 'package:flutter/foundation.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/exception/exception_builder.dart';

abstract class ExceptionHandler {
  final IExceptionBuilder _builder;

  ExceptionHandler(this._builder);

  @mustCallSuper
  BaseException handle(error, [StackTrace? stackTrace]) {
    final exception = _builder.parse(error, stackTrace);

    return exception;
  }
}

// class for network exception handler
class NetworkExceptionHandler extends ExceptionHandler {
  NetworkExceptionHandler(NetworkExceptionBuilder builder) : super(builder);
}

// class for storage exception handler
class StorageExceptionHandler extends ExceptionHandler {
  StorageExceptionHandler(StorageExceptionBuilder builder) : super(builder);
}
