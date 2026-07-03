// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConnectionModelImpl _$$ConnectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConnectionModelImpl(
      connectionId: (json['connectionId'] as num).toInt(),
      userOwnerId: json['userOwnerId'] as String,
      userConnectionId: json['userConnectionId'] as String,
      connectionStatus: json['connectionStatus'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$ConnectionModelImplToJson(
        _$ConnectionModelImpl instance) =>
    <String, dynamic>{
      'connectionId': instance.connectionId,
      'userOwnerId': instance.userOwnerId,
      'userConnectionId': instance.userConnectionId,
      'connectionStatus': instance.connectionStatus,
      'createdAt': instance.createdAt,
    };
