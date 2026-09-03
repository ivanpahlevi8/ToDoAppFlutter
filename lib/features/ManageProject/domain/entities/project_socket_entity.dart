import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_entity.dart';

part 'project_socket_entity.freezed.dart';

@freezed
class ProjectSocketEntity with _$ProjectSocketEntity {
  factory ProjectSocketEntity(
      {required String toDoPointerStatus,
      required String? targetToDoState,
      required ToDoEntity toDoEntity}) = _ProjectSocketEntity;
}
