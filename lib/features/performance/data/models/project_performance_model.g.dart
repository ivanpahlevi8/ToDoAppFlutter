// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_performance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectPerformanceModelImpl _$$ProjectPerformanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectPerformanceModelImpl(
      numberProjectLeadsCurrMonth:
          (json['numberProjectLeadsCurrMonth'] as num).toInt(),
      numberProjectLeadsLastMonth:
          (json['numberProjectLeadsLastMonth'] as num).toInt(),
      numberProjectLeadsPercentage:
          (json['numberProjectLeadsPercentage'] as num).toInt(),
      numberProjectInvolvedCurrMonth:
          (json['numberProjectInvolvedCurrMonth'] as num).toInt(),
      numberProjectInvolvedLastMonth:
          (json['numberProjectInvolvedLastMonth'] as num).toInt(),
      numberProjectInvolvedPercentage:
          (json['numberProjectInvolvedPercentage'] as num).toInt(),
    );

Map<String, dynamic> _$$ProjectPerformanceModelImplToJson(
        _$ProjectPerformanceModelImpl instance) =>
    <String, dynamic>{
      'numberProjectLeadsCurrMonth': instance.numberProjectLeadsCurrMonth,
      'numberProjectLeadsLastMonth': instance.numberProjectLeadsLastMonth,
      'numberProjectLeadsPercentage': instance.numberProjectLeadsPercentage,
      'numberProjectInvolvedCurrMonth': instance.numberProjectInvolvedCurrMonth,
      'numberProjectInvolvedLastMonth': instance.numberProjectInvolvedLastMonth,
      'numberProjectInvolvedPercentage':
          instance.numberProjectInvolvedPercentage,
    };
