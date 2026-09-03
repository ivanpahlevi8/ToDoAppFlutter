import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_entity.dart';

part 'to_do_pointer_entity.freezed.dart';
part 'to_do_pointer_entity.g.dart';

@freezed
class ToDoPointerEntity with _$ToDoPointerEntity {
  factory ToDoPointerEntity({
    @JsonKey(name: "toDoPointerState") required String toDoPointerState,
    @JsonKey(name: "targetToDoState") required String targetToDoState,
    @JsonKey(name: "toDoItem") required ToDoEntity toDoItem,
  }) = _ToDoPointerEntity;

  factory ToDoPointerEntity.fromJson(Map<String, dynamic> json) =>
      _$ToDoPointerEntityFromJson(json);
}
