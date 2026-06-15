import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/Authentication/data/models/login_field_model.dart';
import 'package:to_do_app_flutter/features/Authentication/domain/entitiy/register_field_entity.dart';
import 'package:to_do_app_flutter/features/Authentication/domain/repositories/auth_repository.dart';

class AuthUsecase {
  final AuthRepository authRepository;

  AuthUsecase({required this.authRepository});

  TaskEither<BaseException, UserModel> login(LoginFieldModel userModel) {
    return authRepository.login(userModel);
  }

  TaskEither<BaseException, UserModel> register(
    RegisterFieldEntity registerField,
  ) {
    return authRepository.register(registerField);
  }
}
