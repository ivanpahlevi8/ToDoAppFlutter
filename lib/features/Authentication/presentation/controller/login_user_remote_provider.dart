import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/Authentication/data/models/login_field_model.dart';
import 'package:to_do_app_flutter/features/Authentication/domain/usecase/auth_usecase.dart';
import 'package:to_do_app_flutter/features/Authentication/presentation/controller/login_user_provider.dart';

part 'login_user_remote_provider.g.dart';

@riverpod
class LoginUserRemoteProvider extends _$LoginUserRemoteProvider {
  @override
  FutureOr<UserModel?> build() {
    return null;
  }

  // create function to set login
  Future<void> setUserLogin(LoginFieldModel loginField) async {
    state = AsyncValue.loading();

    // do login
    final response = await sl<AuthUsecase>().login(loginField).run();

    state = response.fold(
      (exception) {
        return AsyncValue.error(exception.error!, exception.stackTrace!);
      },
      (data) {
        // invalidate login
        ref.read(loginUserProviderProvider.notifier).setUserLogin();

        return AsyncValue.data(data);
      },
    );
  }
}
