import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/project_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/usecase/manage_project_usecase.dart';

part 'get_project_team_provider.g.dart';

@riverpod
class GetProjectTeamProvider extends _$GetProjectTeamProvider {
  @override
  FutureOr<List<ProjectEntity>?> build() {
    return null;
  }

  Future<void> getAllProjectByTeam({required int teamId}) async {
    // update state
    state = AsyncValue.loading();

    // get data
    final getResponse = await sl<ManageProjectUsecase>()
        .getAllProjectWithinTeam(teamId: teamId)
        .run();

    getResponse.fold((exception) {
      state = AsyncValue.error(exception.error!, exception.stackTrace!);
    }, (data) {
      state = AsyncValue.data(data);
    });
  }
}
