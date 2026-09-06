import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_pointer_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/usecase/manage_project_usecase.dart';

part 'delete_todo_provider.g.dart';

@riverpod
class DeleteToDoProvider extends _$DeleteToDoProvider {
  @override
  FutureOr<ToDoPointerEntity?> build() {
    return null;
  }

  Future<void> deleteToDoProject(
      {required ToDoPointerEntity toDoPointer}) async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 500));

    final getData = await sl<ManageProjectUsecase>()
        .deleteToDoProject(toDoId: toDoPointer.toDoItem.toDoId)
        .run();

    getData.fold((exception) {
      state = AsyncValue.error(exception.error!, exception.stackTrace!);
    }, (data) {
      state = AsyncValue.data(toDoPointer);
    });
  }
}
