import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/features/ManageProject/data/models/to_do_model.dart';

part 'to_do_pointer_model.freezed.dart';
part 'to_do_pointer_model.g.dart';

@freezed
class ToDoPointerModel with _$ToDoPointerModel {
  factory ToDoPointerModel({
    @JsonKey(name: "toDoPointerStatus") @Default('') String toDoPointerState,
    @JsonKey(name: "targetToDoState") @Default('') String targetToDoState,
    @JsonKey(name: "toDoItem") required ToDoModel toDoItem,
  }) = _ToDoPointerModel;

  factory ToDoPointerModel.fromJson(Map<String, dynamic> json) =>
      _$ToDoPointerModelFromJson(json);
}
