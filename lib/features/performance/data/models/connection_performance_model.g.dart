// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_performance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConnectionPerformanceModelImpl _$$ConnectionPerformanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConnectionPerformanceModelImpl(
      connectionConnectCurrMonth:
          (json['connectionConnectCurrMonth'] as num).toInt(),
      connectionConnectLastMonth:
          (json['connectionConnectLastMonth'] as num).toInt(),
      connectionConnectPercentage:
          (json['connectionConnectPercentage'] as num).toInt(),
      connectionDisconnectCurrMonth:
          (json['connectionDisconnectCurrMonth'] as num).toInt(),
      connectionDisconnectLastMonth:
          (json['connectionDisconnectLastMonth'] as num).toInt(),
      connectionDisconnectPercentage:
          (json['connectionDisconnectPercentage'] as num).toInt(),
    );

Map<String, dynamic> _$$ConnectionPerformanceModelImplToJson(
        _$ConnectionPerformanceModelImpl instance) =>
    <String, dynamic>{
      'connectionConnectCurrMonth': instance.connectionConnectCurrMonth,
      'connectionConnectLastMonth': instance.connectionConnectLastMonth,
      'connectionConnectPercentage': instance.connectionConnectPercentage,
      'connectionDisconnectCurrMonth': instance.connectionDisconnectCurrMonth,
      'connectionDisconnectLastMonth': instance.connectionDisconnectLastMonth,
      'connectionDisconnectPercentage': instance.connectionDisconnectPercentage,
    };
