import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/performance/domain/usecase/performance_remote_usecase.dart';

part 'get_login_user_detail_controller.g.dart';

@riverpod
class GetLoginUserDetailController extends _$GetLoginUserDetailController {
  @override
  FutureOr<UserModel?> build() {
    return null;
  }

  // get user
  Future<void> getLoginUserDetail() async {
    state = AsyncValue.loading();

    // get data
    final getData =
        await sl<PerformanceRemoteUsecase>().getLoginUserDetail().run();

    getData.fold((l) {
      state = AsyncValue.error(l.error!, l.stackTrace!);
    }, (r) {
      state = AsyncValue.data(r);
    });
  }
}
