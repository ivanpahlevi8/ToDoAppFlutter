import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/Authentication/data/models/login_field_model.dart';
import 'package:to_do_app_flutter/features/Authentication/domain/entitiy/register_field_entity.dart';
import 'package:to_do_app_flutter/features/Authentication/domain/repositories/auth_repository.dart';
import 'package:to_do_app_flutter/features/Authentication/domain/repositories/user_login_repository.dart';

class AuthUsecase {
  final AuthRepository authRepository;
  final UserLoginRepository userLoginRepository;

  AuthUsecase({
    required this.authRepository,
    required this.userLoginRepository,
  });

  TaskEither<BaseException, UserModel> login(LoginFieldModel userModel) {
    return authRepository.login(userModel).flatMap((userModel) {
      return userLoginRepository.setUserLogin().map((_) => userModel);
    });
  }

  TaskEither<BaseException, UserModel> register(
    RegisterFieldEntity registerField,
  ) {
    return authRepository.register(registerField);
  }
}
