// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConnectionSummaryModelImpl _$$ConnectionSummaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConnectionSummaryModelImpl(
      numberOfRequestedConnection:
          (json['numberOfRequestedConnection'] as num).toInt(),
      numberOfRequestConnection:
          (json['numberOfRequestConnection'] as num).toInt(),
      numberConnectionStatusUseFollow:
          (json['numberConnectionStatusUserFollow'] as num).toInt(),
      numberConnectionStatusUserFollowed:
          (json['numberConnectionStatusUserFollowed'] as num).toInt(),
      numberConnectionStatusConnect:
          (json['numberConnectionStatusConnect'] as num).toInt(),
      numberConnectionStatusUserReject:
          (json['numberConnectionStatusUserReject'] as num).toInt(),
      numberConnectionStatusUserRejected:
          (json['numberConnectionStatusUserRejected'] as num).toInt(),
      numberConnectionStatusDisconnect:
          (json['numberConnectionStatusDisconnect'] as num).toInt(),
      topThreeConnection: (json['topThreeConnection'] as List<dynamic>)
          .map((e) => ConnectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ConnectionSummaryModelImplToJson(
        _$ConnectionSummaryModelImpl instance) =>
    <String, dynamic>{
      'numberOfRequestedConnection': instance.numberOfRequestedConnection,
      'numberOfRequestConnection': instance.numberOfRequestConnection,
      'numberConnectionStatusUserFollow':
          instance.numberConnectionStatusUseFollow,
      'numberConnectionStatusUserFollowed':
          instance.numberConnectionStatusUserFollowed,
      'numberConnectionStatusConnect': instance.numberConnectionStatusConnect,
      'numberConnectionStatusUserReject':
          instance.numberConnectionStatusUserReject,
      'numberConnectionStatusUserRejected':
          instance.numberConnectionStatusUserRejected,
      'numberConnectionStatusDisconnect':
          instance.numberConnectionStatusDisconnect,
      'topThreeConnection': instance.topThreeConnection,
    };
