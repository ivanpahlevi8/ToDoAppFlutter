// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_do_pointer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToDoPointerModelImpl _$$ToDoPointerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ToDoPointerModelImpl(
      toDoPointerState: json['toDoPointerStatus'] as String? ?? '',
      targetToDoState: json['targetToDoState'] as String? ?? '',
      toDoItem: ToDoModel.fromJson(json['toDoItem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ToDoPointerModelImplToJson(
        _$ToDoPointerModelImpl instance) =>
    <String, dynamic>{
      'toDoPointerStatus': instance.toDoPointerState,
      'targetToDoState': instance.targetToDoState,
      'toDoItem': instance.toDoItem,
    };
