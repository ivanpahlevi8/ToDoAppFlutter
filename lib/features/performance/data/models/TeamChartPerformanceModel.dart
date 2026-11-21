import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/features/performance/data/models/chart_object_model.dart';

part 'TeamChartPerformanceModel.freezed.dart';
part 'TeamChartPerformanceModel.g.dart';

@freezed
class TeamChartPerformanceModel with _$TeamChartPerformanceModel {
  factory TeamChartPerformanceModel({
    @JsonKey(name: "teamNumberAsLead")
    required List<ChartObjectModel> teamsAsLeader,
    @JsonKey(name: "teamNumberAsMember")
    required List<ChartObjectModel> teamsAsMember,
  }) = _TeamChartPerformanceModel;

  factory TeamChartPerformanceModel.fromJson(Map<String, dynamic> json) =>
      _$TeamChartPerformanceModelFromJson(json);
}
