import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/chart_object_entity.dart';

part 'team_chart_performance_entity.freezed.dart';

@freezed
class TeamChartPerformanceEntity with _$TeamChartPerformanceEntity {
  factory TeamChartPerformanceEntity({
    required List<ChartObjectEntity> teamsAsLeader,
    required List<ChartObjectEntity> teamsAsMember,
  }) = _TeamChartPerformanceEntity;
}
