import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';

abstract interface class UserLoginRepository {
  // function to set user login
  TaskEither<BaseException, void> setUserLogin();

  // function to get user login satus
  Either<BaseException, bool> getUserLoginStatus();
}
