// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_chart_performance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectChartPerformanceModelImpl _$$ProjectChartPerformanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectChartPerformanceModelImpl(
      projectLeads: (json['projectLeads'] as List<dynamic>)
          .map((e) => ChartObjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      projectMember: (json['projectAsMember'] as List<dynamic>)
          .map((e) => ChartObjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProjectChartPerformanceModelImplToJson(
        _$ProjectChartPerformanceModelImpl instance) =>
    <String, dynamic>{
      'projectLeads': instance.projectLeads,
      'projectAsMember': instance.projectMember,
    };
