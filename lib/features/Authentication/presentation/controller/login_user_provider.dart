import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/Authentication/domain/usecase/user_login_usecase.dart';

part 'login_user_provider.g.dart';

@riverpod
class LoginUserProvider extends _$LoginUserProvider {
  @override
  FutureOr<bool> build() {
    // get is login stat
    final isLoggedIn = sl<UserLoginUsecase>().getUserLoginStatus();

    return isLoggedIn.fold(
      (exception) {
        return false;
      },
      (data) {
        return data;
      },
    );
  }

  // create function to set user login
  Future<void> setUserLogin() async {
    state = AsyncValue.loading();

    final response = await sl<UserLoginUsecase>().setUserLogin().run();

    state = response.fold(
      (exception) {
        return AsyncValue.error(exception.error!, exception.stackTrace!);
      },
      (data) {
        return AsyncValue.data(true);
      },
    );
  }
}
