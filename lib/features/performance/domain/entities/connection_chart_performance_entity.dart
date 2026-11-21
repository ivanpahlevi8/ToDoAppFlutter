import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/chart_object_entity.dart';

part 'connection_chart_performance_entity.freezed.dart';

@freezed
class ConnectionChartPerformanceEntity with _$ConnectionChartPerformanceEntity {
  factory ConnectionChartPerformanceEntity({
    required List<ChartObjectEntity> connectionsConnected,
    required List<ChartObjectEntity> connectionsDisconnected,
  }) = _ConnectionChartPerformanceEntity;
}
