import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/Authentication/data/models/login_field_model.dart';

abstract interface class AuthRepository {
  // function to login
  TaskEither<BaseException, UserModel> login(LoginFieldModel loginFieldModel);
}
