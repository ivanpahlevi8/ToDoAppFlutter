// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToDoSummaryModelImpl _$$ToDoSummaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ToDoSummaryModelImpl(
      toDoNumber: (json['toDoNumber'] as num).toInt(),
      onCreateToDoNumber: (json['onCreateToDoNumber'] as num).toInt(),
      onProgressToDoNumber: (json['onProgressToDoNumber'] as num).toInt(),
      onFinishedToDoNumer: (json['onFinishedToDoNumber'] as num).toInt(),
      topThreeToDo: (json['topThreeToDo'] as List<dynamic>)
          .map((e) => ToDoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ToDoSummaryModelImplToJson(
        _$ToDoSummaryModelImpl instance) =>
    <String, dynamic>{
      'toDoNumber': instance.toDoNumber,
      'onCreateToDoNumber': instance.onCreateToDoNumber,
      'onProgressToDoNumber': instance.onProgressToDoNumber,
      'onFinishedToDoNumber': instance.onFinishedToDoNumer,
      'topThreeToDo': instance.topThreeToDo,
    };
