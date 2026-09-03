import 'package:freezed_annotation/freezed_annotation.dart';

part 'to_do_entity.freezed.dart';
part 'to_do_entity.g.dart';

@freezed
class ToDoEntity with _$ToDoEntity {
  factory ToDoEntity({
    @JsonKey(name: "toDoId") required int toDoId,
    @JsonKey(name: "projectId") required int projectId,
    @JsonKey(name: "itemName") required String todoName,
    @JsonKey(name: "itemDescription") required String toDoDescription,
    @JsonKey(name: "itemState") required String toDoState,
    @JsonKey(name: "createdAt") required String toDoCreatedAt,
  }) = _ToDoEntity;

  factory ToDoEntity.fromJson(Map<String, dynamic> json) =>
      _$ToDoEntityFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return super.toJson();
  }
}
