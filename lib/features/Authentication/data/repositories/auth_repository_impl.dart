import 'package:fpdart/src/task_either.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/Authentication/data/datasource/auth_remote_datasource.dart';
import 'package:to_do_app_flutter/features/Authentication/data/mappers/register_mapper.dart';
import 'package:to_do_app_flutter/features/Authentication/data/models/login_field_model.dart';
import 'package:to_do_app_flutter/features/Authentication/domain/entitiy/register_field_entity.dart';
import 'package:to_do_app_flutter/features/Authentication/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource authRemoteDatasource;
  final SharedPreferences sharedPreferences;

  AuthRepositoryImpl({
    required this.authRemoteDatasource,
    required this.sharedPreferences,
  });

  @override
  TaskEither<BaseException, UserModel> login(LoginFieldModel loginFieldModel) {
    return authRemoteDatasource.login(loginFieldModel).flatMap((responseModel) {
      if (responseModel.isSuccess && responseModel.result != null) {
        // set shared preferences for user id
        sharedPreferences.setString("user_id", responseModel.result!.userId);

        return TaskEither.right(responseModel.result!);
      } else {
        return TaskEither.left(
          BaseException(
            // Or whatever your default exception class is
            message: responseModel.message,
            userMessage: responseModel.message,
            error: 'API Logic Error',
            stackTrace: StackTrace.current,
          ),
        );
      }
    });
  }

  @override
  TaskEither<BaseException, UserModel> register(
    RegisterFieldEntity registerFieldEntity,
  ) {
    return authRemoteDatasource.register(registerFieldEntity.toModel()).flatMap(
      (responseModel) {
        if (responseModel.isSuccess && responseModel.result != null) {
          return TaskEither.right(responseModel.result!);
        } else {
          return TaskEither.left(
            BaseException(
              // Or whatever your default exception class is
              message: responseModel.message,
              userMessage: responseModel.message,
              error: 'API Logic Error',
              stackTrace: StackTrace.current,
            ),
          );
        }
      },
    );
  }
}
