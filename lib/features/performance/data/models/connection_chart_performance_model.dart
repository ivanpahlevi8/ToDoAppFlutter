import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/features/performance/data/models/chart_object_model.dart';

part 'connection_chart_performance_model.freezed.dart';
part 'connection_chart_performance_model.g.dart';

@freezed
class ConnectionChartPerformanceModel with _$ConnectionChartPerformanceModel {
  factory ConnectionChartPerformanceModel({
    @JsonKey(name: "connectionConnectedChart")
    required List<ChartObjectModel> connectionsConnected,
    @JsonKey(name: "connectionDisconnectedChart")
    required List<ChartObjectModel> connectionsDisconnected,
  }) = _ConnectionChartPerformanceModel;

  factory ConnectionChartPerformanceModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectionChartPerformanceModelFromJson(json);
}
