import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_entity.dart';

part 'todo_summary_entity.freezed.dart';

@freezed
class ToDoSummaryEntity with _$ToDoSummaryEntity {
  factory ToDoSummaryEntity({
    required int toDoNumber,
    required int onCreateToDoNumber,
    required int onProgressToDoNumber,
    required int onFinishedToDoNumber,
    required List<ToDoEntity> topThreeToDo,
  }) = _ToDoSummaryEntity;
}
