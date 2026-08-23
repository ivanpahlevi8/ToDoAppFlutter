import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/usecase/manage_project_usecase.dart';

part 'delete_project_provider.g.dart';

@riverpod
class DeleteProjectProvider extends _$DeleteProjectProvider {
  @override
  FutureOr<String?> build() {
    return null;
  }

  Future<void> deleteProject({required int projectId}) async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 600));

    final result = await sl<ManageProjectUsecase>()
        .removeProject(projectId: projectId)
        .run();

    result.fold((exception) {
      state = AsyncValue.error(exception.error!, exception.stackTrace!);
    }, (r) {
      state = AsyncValue.data(r);
    });
  }
}
