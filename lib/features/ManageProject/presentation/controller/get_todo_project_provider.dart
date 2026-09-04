import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/usecase/manage_project_socket_usecase.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/usecase/manage_project_usecase.dart';
import 'package:to_do_app_flutter/features/ManageProject/presentation/controller/todo_stream_proider.dart';

part 'get_todo_project_provider.g.dart';

@riverpod
class GetToDoProjectProvider extends _$GetToDoProjectProvider {
  @override
  FutureOr<List<ToDoEntity>?> build() {
    return null;
  }

  Future<void> getToDoProject({required int projectId}) async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 500));

    final dataResponse = await sl<ManageProjectUsecase>()
        .getToDoProject(projectId: projectId)
        .run();

    // check data response
    dataResponse.fold((exception) {
      state = AsyncValue.error(exception.error!, exception.stackTrace!);
    }, (data) {
      sl<ManageProjectSocketUsecase>()
          .connectTOSocketServer(projectId: projectId);

      // if success initialize stream
      ref.read(toDoNotifier.notifier).initDataStream(data);

      state = AsyncValue.data(data);
    });
  }
}
