import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_pointer_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/usecase/manage_project_usecase.dart';

part 'update_project_team_provider.g.dart';

@riverpod
class UpdateProjectTeamProvider extends _$UpdateProjectTeamProvider {
  @override
  FutureOr<ToDoPointerEntity?> build() {
    return null;
  }

  Future<void> updateProjectTeam({required ToDoPointerEntity toDo}) async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 600));

    // create new to do item
    ToDoEntity toDoEntity = ToDoEntity(
        toDoId: toDo.toDoItem.toDoId,
        projectId: toDo.toDoItem.projectId,
        todoName: toDo.toDoItem.todoName,
        toDoDescription: toDo.toDoItem.toDoDescription,
        toDoState: toDo.targetToDoState,
        toDoCreatedAt: toDo.toDoItem.toDoCreatedAt);

    // update
    final response = await sl<ManageProjectUsecase>()
        .updateToDoproject(toDo: toDoEntity)
        .run();

    response.fold((exception) {
      // update state into error
      state = AsyncValue.error(exception.error!, exception.stackTrace!);
    }, (data) {
      state = AsyncValue.data(toDo);
    });
  }
}
