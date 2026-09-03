import 'package:freezed_annotation/freezed_annotation.dart';

part 'to_do_model.freezed.dart';
part 'to_do_model.g.dart';

@freezed
class ToDoModel with _$ToDoModel {
  factory ToDoModel({
    @JsonKey(name: "toDoId") required int toDoID,
    @JsonKey(name: "projectId") required int projectId,
    @JsonKey(name: "itemName") required String toDoName,
    @JsonKey(name: "itemDescription") required String toDoDescription,
    @JsonKey(name: "itemState") required String toDoState,
    @JsonKey(name: "createdAt") required String createdAt,
  }) = _ToDoModel;

  factory ToDoModel.fromJson(Map<String, dynamic> json) =>
      _$ToDoModelFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return super.toJson();
  }
}
