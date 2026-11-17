import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/chart_object_entity.dart';

part 'project_chart_performance_entity.freezed.dart';

@freezed
class ProjectChartPerformanceEntity with _$ProjectChartPerformanceEntity {
  factory ProjectChartPerformanceEntity({
    required List<ChartObjectEntity> projectLeads,
    required List<ChartObjectEntity> projectMember,
  }) = _ProjectChartPerformanceEntity;
}
