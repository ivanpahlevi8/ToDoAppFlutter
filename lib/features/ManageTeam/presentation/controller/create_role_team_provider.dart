import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/role_team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/role_team_input_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/usecase/team_usecase.dart';

part 'create_role_team_provider.g.dart';

@riverpod
class CreateRoleTeamProvider extends _$CreateRoleTeamProvider {
  @override
  FutureOr<RoleTeamEntity?> build() {
    return null;
  }

  Future<void> createRoleTeam({
    required RoleTeamInputEntity roleTeamInput,
  }) async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 600));

    final getResponseData = await sl<TeamUsecase>()
        .createRoleTeam(roleTeamInput: roleTeamInput)
        .run();

    getResponseData.fold(
      (exception) {
        state = AsyncValue.error(exception.error!, exception.stackTrace!);
      },
      (data) {
        state = AsyncValue.data(data);
      },
    );
  }
}
