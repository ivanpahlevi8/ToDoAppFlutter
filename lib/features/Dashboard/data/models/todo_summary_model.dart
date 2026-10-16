import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/features/ManageProject/data/models/to_do_model.dart';

part 'todo_summary_model.freezed.dart';
part 'todo_summary_model.g.dart';

@freezed
class ToDoSummaryModel with _$ToDoSummaryModel {
  factory ToDoSummaryModel({
    @JsonKey(name: "toDoNumber") required int toDoNumber,
    @JsonKey(name: "onCreateToDoNumber") required int onCreateToDoNumber,
    @JsonKey(name: "onProgressToDoNumber") required int onProgressToDoNumber,
    @JsonKey(name: "onFinishedToDoNumber") required int onFinishedToDoNumer,
    @JsonKey(name: "topThreeToDo") required List<ToDoModel> topThreeToDo,
  }) = _ToDoSummaryModel;

  factory ToDoSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ToDoSummaryModelFromJson(json);
}
