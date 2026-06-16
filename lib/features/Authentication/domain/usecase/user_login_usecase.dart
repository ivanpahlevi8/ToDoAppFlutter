import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/Authentication/domain/repositories/user_login_repository.dart';

class UserLoginUsecase {
  final UserLoginRepository userLoginRepository;

  UserLoginUsecase({required this.userLoginRepository});

  // create function to set user login
  TaskEither<BaseException, void> setUserLogin() {
    return userLoginRepository.setUserLogin();
  }

  // create functio to get user login status
  Either<BaseException, bool> getUserLoginStatus() {
    return userLoginRepository.getUserLoginStatus();
  }
}
