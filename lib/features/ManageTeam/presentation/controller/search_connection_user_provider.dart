import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/usecase/team_usecase.dart';

part 'search_connection_user_provider.g.dart';

@riverpod
class SearchConnectionUserProvider extends _$SearchConnectionUserProvider {
  @override
  FutureOr<List<UserModel>?> build() {
    return null;
  }

  Future<void> searchConnectionUserProvider({required String name}) async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 600));

    final data = await sl<TeamUsecase>().searchConnectionUser(name: name).run();

    data.fold(
      (exception) {
        state = AsyncValue.error(exception.error!, exception.stackTrace!);
      },
      (data) {
        state = AsyncValue.data(data);
      },
    );
  }
}
