// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_performance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToDoPerformanceModelImpl _$$ToDoPerformanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ToDoPerformanceModelImpl(
      numberToDoCreatedThisMonth:
          (json['numberToDoCreatedThisMonth'] as num).toInt(),
      numberToDoCreatedLastMonth:
          (json['numberToDoCreatedLastMonth'] as num).toInt(),
      percentageToDoCreated: (json['percentageToDoCreated'] as num).toInt(),
      numberToDoOnProgressedThisMonth:
          (json['numberToDoOnProgressThisMonth'] as num).toInt(),
      numberToDoOnProgressedLastMonth:
          (json['numberToDoOnProgressLastMonth'] as num).toInt(),
      percentageToDoOnProgressed:
          (json['percentageToDoOnProgress'] as num).toInt(),
      numberToDoDoneThisMonth: (json['numberToDoDoneThisMonth'] as num).toInt(),
      numberToDoDoneLastMonth: (json['numberToDoDoneLastMonth'] as num).toInt(),
      percentageToDoDone: (json['percentageToDoDone'] as num).toInt(),
    );

Map<String, dynamic> _$$ToDoPerformanceModelImplToJson(
        _$ToDoPerformanceModelImpl instance) =>
    <String, dynamic>{
      'numberToDoCreatedThisMonth': instance.numberToDoCreatedThisMonth,
      'numberToDoCreatedLastMonth': instance.numberToDoCreatedLastMonth,
      'percentageToDoCreated': instance.percentageToDoCreated,
      'numberToDoOnProgressThisMonth': instance.numberToDoOnProgressedThisMonth,
      'numberToDoOnProgressLastMonth': instance.numberToDoOnProgressedLastMonth,
      'percentageToDoOnProgress': instance.percentageToDoOnProgressed,
      'numberToDoDoneThisMonth': instance.numberToDoDoneThisMonth,
      'numberToDoDoneLastMonth': instance.numberToDoDoneLastMonth,
      'percentageToDoDone': instance.percentageToDoDone,
    };
