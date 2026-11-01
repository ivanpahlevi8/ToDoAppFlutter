import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_performance_entity.freezed.dart';

@freezed
class ToDoPerformanceEntity with _$ToDoPerformanceEntity {
  factory ToDoPerformanceEntity({
    required int numberToDoCreatedThisMonth,
    required int numberToDoCreatedLastMonth,
    required int percentageToDoCreated,
    required int numberToDoOnProgressedThisMonth,
    required int numberToDoOnProgressedLastMonth,
    required int percentageToDoOnProgressed,
    required int numberToDoDoneThisMonth,
    required int numberToDoDoneLastMonth,
    required int percentageToDoDone,
  }) = _ToDoPerformanceEntity;
}
