import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/exception/exception_handler.dart';
import 'package:to_do_app_flutter/features/Authentication/data/datasource/user_login_datasource.dart';
import 'package:to_do_app_flutter/features/Authentication/domain/repositories/user_login_repository.dart';

class UserLoginRepositoryImpl implements UserLoginRepository {
  final UserLoginDatasource userLoginDatasource;
  final ExceptionHandler handler;

  UserLoginRepositoryImpl({
    required this.userLoginDatasource,
    required this.handler,
  });

  @override
  Either<BaseException, bool> getUserLoginStatus() {
    try {
      final getUserLoginStatus = userLoginDatasource.getUserLoginStatus();

      return Right(getUserLoginStatus);
    } catch (error, stackTrace) {
      final exception = handler.handle(error, stackTrace);

      return Left(exception);
    }
  }

  @override
  TaskEither<BaseException, void> setUserLogin() {
    // Notice: NO 'async' keyword up here anymore!
    return TaskEither.tryCatch(
      () async {
        // 1. Run your asynchronous operation inside here
        await userLoginDatasource.geUserLogin();
      },
      (error, stackTrace) {
        // 2. If it crashes, automatically catch it and map it to your BaseException
        return handler.handle(error, stackTrace);
      },
    );
  }
}
