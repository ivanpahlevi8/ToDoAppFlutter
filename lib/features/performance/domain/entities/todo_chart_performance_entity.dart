import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/chart_object_entity.dart';

part 'todo_chart_performance_entity.freezed.dart';

@freezed
class ToDoChartPerformanceEntity with _$ToDoChartPerformanceEntity {
  factory ToDoChartPerformanceEntity({
    required List<ChartObjectEntity> toDoOnCreated,
    required List<ChartObjectEntity> toDoOnProgressed,
    required List<ChartObjectEntity> toDoOnFinished,
  }) = _ToDoChartPerformanceEntity;
}
