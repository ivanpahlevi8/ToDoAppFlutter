// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_object_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChartObjectModelImpl _$$ChartObjectModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChartObjectModelImpl(
      year: (json['year'] as num).toInt(),
      month: (json['month'] as num).toInt(),
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$ChartObjectModelImplToJson(
        _$ChartObjectModelImpl instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'count': instance.count,
    };
