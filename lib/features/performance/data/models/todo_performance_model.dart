import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_performance_model.freezed.dart';
part 'todo_performance_model.g.dart';

@freezed
class ToDoPerformanceModel with _$ToDoPerformanceModel {
  factory ToDoPerformanceModel({
    @JsonKey(name: "numberToDoCreatedThisMonth")
    required int numberToDoCreatedThisMonth,
    @JsonKey(name: "numberToDoCreatedLastMonth")
    required int numberToDoCreatedLastMonth,
    @JsonKey(name: "percentageToDoCreated") required int percentageToDoCreated,
    @JsonKey(name: "numberToDoOnProgressThisMonth")
    required int numberToDoOnProgressedThisMonth,
    @JsonKey(name: "numberToDoOnProgressLastMonth")
    required int numberToDoOnProgressedLastMonth,
    @JsonKey(name: "percentageToDoOnProgress")
    required int percentageToDoOnProgressed,
    @JsonKey(name: "numberToDoDoneThisMonth")
    required int numberToDoDoneThisMonth,
    @JsonKey(name: "numberToDoDoneLastMonth")
    required int numberToDoDoneLastMonth,
    @JsonKey(name: "percentageToDoDone") required int percentageToDoDone,
  }) = _ToDoPerformanceModel;

  factory ToDoPerformanceModel.fromJson(Map<String, dynamic> json) =>
      _$ToDoPerformanceModelFromJson(json);
}
