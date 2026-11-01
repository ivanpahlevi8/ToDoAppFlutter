// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_performance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamPerformanceModelImpl _$$TeamPerformanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamPerformanceModelImpl(
      numberTeamLeadsCurrMonth:
          (json['numberTeamLeadsCurrMonth'] as num).toInt(),
      numberTeamLeadsLastMonth:
          (json['numberTeamLeadsLastMonth'] as num).toInt(),
      numberTeamLeadsPercentage:
          (json['numberTeamLeadsPercentage'] as num).toInt(),
      numberTeamInvolvedCurrMonth:
          (json['numberTeamInvolvedCurrMonth'] as num).toInt(),
      numberTeamInvolvedLastMonth:
          (json['numberTeamInvolvedPercentage'] as num).toInt(),
      numberTeamInvolvedPercentage:
          (json['numberTeamInvolvedLastMonth'] as num).toInt(),
    );

Map<String, dynamic> _$$TeamPerformanceModelImplToJson(
        _$TeamPerformanceModelImpl instance) =>
    <String, dynamic>{
      'numberTeamLeadsCurrMonth': instance.numberTeamLeadsCurrMonth,
      'numberTeamLeadsLastMonth': instance.numberTeamLeadsLastMonth,
      'numberTeamLeadsPercentage': instance.numberTeamLeadsPercentage,
      'numberTeamInvolvedCurrMonth': instance.numberTeamInvolvedCurrMonth,
      'numberTeamInvolvedPercentage': instance.numberTeamInvolvedLastMonth,
      'numberTeamInvolvedLastMonth': instance.numberTeamInvolvedPercentage,
    };
