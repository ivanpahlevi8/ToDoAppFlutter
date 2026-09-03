// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_do_pointer_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToDoPointerEntityImpl _$$ToDoPointerEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ToDoPointerEntityImpl(
      toDoPointerState: json['toDoPointerState'] as String,
      targetToDoState: json['targetToDoState'] as String,
      toDoItem: ToDoEntity.fromJson(json['toDoItem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ToDoPointerEntityImplToJson(
        _$ToDoPointerEntityImpl instance) =>
    <String, dynamic>{
      'toDoPointerState': instance.toDoPointerState,
      'targetToDoState': instance.targetToDoState,
      'toDoItem': instance.toDoItem,
    };
