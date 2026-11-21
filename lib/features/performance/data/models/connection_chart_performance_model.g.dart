// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_chart_performance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConnectionChartPerformanceModelImpl
    _$$ConnectionChartPerformanceModelImplFromJson(Map<String, dynamic> json) =>
        _$ConnectionChartPerformanceModelImpl(
          connectionsConnected: (json['connectionConnectedChart']
                  as List<dynamic>)
              .map((e) => ChartObjectModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          connectionsDisconnected: (json['connectionDisconnectedChart']
                  as List<dynamic>)
              .map((e) => ChartObjectModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$ConnectionChartPerformanceModelImplToJson(
        _$ConnectionChartPerformanceModelImpl instance) =>
    <String, dynamic>{
      'connectionConnectedChart': instance.connectionsConnected,
      'connectionDisconnectedChart': instance.connectionsDisconnected,
    };
