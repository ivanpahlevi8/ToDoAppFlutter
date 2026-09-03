// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_do_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToDoModelImpl _$$ToDoModelImplFromJson(Map<String, dynamic> json) =>
    _$ToDoModelImpl(
      toDoID: (json['toDoId'] as num).toInt(),
      projectId: (json['projectId'] as num).toInt(),
      toDoName: json['itemName'] as String,
      toDoDescription: json['itemDescription'] as String,
      toDoState: json['itemState'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$ToDoModelImplToJson(_$ToDoModelImpl instance) =>
    <String, dynamic>{
      'toDoId': instance.toDoID,
      'projectId': instance.projectId,
      'itemName': instance.toDoName,
      'itemDescription': instance.toDoDescription,
      'itemState': instance.toDoState,
      'createdAt': instance.createdAt,
    };
