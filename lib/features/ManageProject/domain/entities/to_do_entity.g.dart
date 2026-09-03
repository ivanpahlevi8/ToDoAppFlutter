// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_do_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToDoEntityImpl _$$ToDoEntityImplFromJson(Map<String, dynamic> json) =>
    _$ToDoEntityImpl(
      toDoId: (json['toDoId'] as num).toInt(),
      projectId: (json['projectId'] as num).toInt(),
      todoName: json['itemName'] as String,
      toDoDescription: json['itemDescription'] as String,
      toDoState: json['itemState'] as String,
      toDoCreatedAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$ToDoEntityImplToJson(_$ToDoEntityImpl instance) =>
    <String, dynamic>{
      'toDoId': instance.toDoId,
      'projectId': instance.projectId,
      'itemName': instance.todoName,
      'itemDescription': instance.toDoDescription,
      'itemState': instance.toDoState,
      'createdAt': instance.toDoCreatedAt,
    };
