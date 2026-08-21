import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/create_project_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/usecase/manage_project_usecase.dart';

part 'create_project_team_provider.g.dart';

@riverpod
class CreateProjectTeamProvider extends _$CreateProjectTeamProvider {
  @override
  FutureOr<String?> build() {
    return null;
  }

  Future<void> createProjectTeam(
      {required CreateProjectEntity createProject}) async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 600));

    final response = await sl<ManageProjectUsecase>()
        .createProjectWithinTeam(createProject: createProject)
        .run();

    response.fold((exception) {
      state = AsyncValue.error(exception.error!, exception.stackTrace!);
    }, (data) {
      state = AsyncValue.data(data);
    });
  }
}
