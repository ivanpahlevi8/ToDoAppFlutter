import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/Authentication/domain/entitiy/register_field_entity.dart';
import 'package:to_do_app_flutter/features/Authentication/domain/usecase/auth_usecase.dart';

part 'register_user_provider.g.dart';

@riverpod
class RegisterUserProvider extends _$RegisterUserProvider {
  @override
  FutureOr<UserModel?> build() async {
    return null;
  }

  // function to register
  Future<void> registerUser(RegisterFieldEntity registerField) async {
    state = const AsyncValue.loading();

    await Future.delayed(const Duration(milliseconds: 600));

    final response = await sl<AuthUsecase>().register(registerField).run();

    response.fold(
      (exception) {
        state = AsyncValue.error(
          exception.userMessage ??
              'An unexpected error occurred. Please try again.',
          exception.stackTrace ?? StackTrace.current,
        );
      },
      (data) {
        // If data is a ResponseModel, remember to pass the unwrapped user model (.result)
        // or whatever your repository/usecase outputs!
        state = AsyncValue.data(data);
      },
    );
  }
}
