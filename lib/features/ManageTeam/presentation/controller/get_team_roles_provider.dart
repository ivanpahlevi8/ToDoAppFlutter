import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/role_team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/usecase/team_usecase.dart';

part 'get_team_roles_provider.g.dart';

@riverpod
class GetTeamRolesProvider extends _$GetTeamRolesProvider {
  @override
  FutureOr<List<RoleTeamEntity>?> build() {
    return null;
  }

  Future<void> getTeamRoles({required int teamId}) async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 500));

    final result = await sl<TeamUsecase>()
        .getAllTeamRoles(teamId: teamId)
        .run();

    result.fold(
      (exception) {
        state = AsyncValue.error(exception.error!, exception.stackTrace!);
      },
      (data) {
        state = AsyncValue.data(data);
      },
    );
  }
}
