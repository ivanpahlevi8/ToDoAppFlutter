import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/features/performance/data/models/chart_object_model.dart';

part 'project_chart_performance_model.freezed.dart';
part 'project_chart_performance_model.g.dart';

@freezed
class ProjectChartPerformanceModel with _$ProjectChartPerformanceModel {
  factory ProjectChartPerformanceModel({
    @JsonKey(name: "projectLeads") required List<ChartObjectModel> projectLeads,
    @JsonKey(name: "projectAsMember")
    required List<ChartObjectModel> projectMember,
  }) = _ProjectChartPerformanceModel;

  factory ProjectChartPerformanceModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectChartPerformanceModelFromJson(json);
}
