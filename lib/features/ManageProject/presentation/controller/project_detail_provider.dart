import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/project_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/usecase/manage_project_usecase.dart';
import 'package:to_do_app_flutter/features/ManageProject/presentation/controller/get_todo_project_provider.dart';

part 'project_detail_provider.g.dart';

@riverpod
class ProjectDetailProvider extends _$ProjectDetailProvider {
  @override
  FutureOr<ProjectEntity?> build() {
    return null;
  }

  Future<void> getProjectDetail({required int projectId}) async {
    // set loading state
    state = AsyncValue.loading();

    // add some delay
    await Future.delayed(Duration(milliseconds: 500));

    // get project
    final getResult = await sl<ManageProjectUsecase>()
        .getProjectDetail(projectId: projectId)
        .run();

    getResult.fold((exception) {
      state = AsyncValue.error(exception.error!, exception.stackTrace!);
    }, (data) {
      // get to do form project
      ref
          .read(getToDoProjectProviderProvider.notifier)
          .getToDoProject(projectId: projectId);

      // update state to success state
      state = AsyncValue.data(data);
    });
  }
}
