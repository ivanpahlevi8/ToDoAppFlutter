import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/features/performance/data/models/chart_object_model.dart';

part 'todo_chart_performance_model.freezed.dart';
part 'todo_chart_performance_model.g.dart';

@freezed
class ToDoChartPerformanceModel with _$ToDoChartPerformanceModel {
  factory ToDoChartPerformanceModel({
    @JsonKey(name: "toDoOnCreatedYear")
    required List<ChartObjectModel> toDoOnCreated,
    @JsonKey(name: "toDoOnProgressedYear")
    required List<ChartObjectModel> toDoOnProgressed,
    @JsonKey(name: "toDoOnFinishedYear")
    required List<ChartObjectModel> toDoOnFinished,
  }) = _ToDoChartPerformanceModel;

  factory ToDoChartPerformanceModel.fromJson(Map<String, dynamic> json) =>
      _$ToDoChartPerformanceModelFromJson(json);
}
