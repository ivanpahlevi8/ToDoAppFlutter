import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/usecase/team_usecase.dart';

part 'remove_role_team_provider.g.dart';

@riverpod
class RemoveRoleTeamProvider extends _$RemoveRoleTeamProvider {
  @override
  FutureOr<String?> build() {
    return null;
  }

  Future<void> removeRoleTeam({required int roleTeamId}) async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 600));

    final data = await sl<TeamUsecase>()
        .removeRoleTeam(roleTeamId: roleTeamId)
        .run();

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
