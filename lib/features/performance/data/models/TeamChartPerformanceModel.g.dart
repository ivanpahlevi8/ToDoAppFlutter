// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TeamChartPerformanceModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamChartPerformanceModelImpl _$$TeamChartPerformanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamChartPerformanceModelImpl(
      teamsAsLeader: (json['teamNumberAsLead'] as List<dynamic>)
          .map((e) => ChartObjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      teamsAsMember: (json['teamNumberAsMember'] as List<dynamic>)
          .map((e) => ChartObjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TeamChartPerformanceModelImplToJson(
        _$TeamChartPerformanceModelImpl instance) =>
    <String, dynamic>{
      'teamNumberAsLead': instance.teamsAsLeader,
      'teamNumberAsMember': instance.teamsAsMember,
    };
