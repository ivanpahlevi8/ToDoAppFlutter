// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_chart_performance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToDoChartPerformanceModelImpl _$$ToDoChartPerformanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ToDoChartPerformanceModelImpl(
      toDoOnCreated: (json['toDoOnCreatedYear'] as List<dynamic>)
          .map((e) => ChartObjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      toDoOnProgressed: (json['toDoOnProgressedYear'] as List<dynamic>)
          .map((e) => ChartObjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      toDoOnFinished: (json['toDoOnFinishedYear'] as List<dynamic>)
          .map((e) => ChartObjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ToDoChartPerformanceModelImplToJson(
        _$ToDoChartPerformanceModelImpl instance) =>
    <String, dynamic>{
      'toDoOnCreatedYear': instance.toDoOnCreated,
      'toDoOnProgressedYear': instance.toDoOnProgressed,
      'toDoOnFinishedYear': instance.toDoOnFinished,
    };
