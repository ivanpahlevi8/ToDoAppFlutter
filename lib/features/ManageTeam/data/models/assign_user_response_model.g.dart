// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assign_user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssignUserResponseModelImpl _$$AssignUserResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AssignUserResponseModelImpl(
      teamId: (json['teamId'] as num).toInt(),
      userId: json['userId'] as String,
      teamRoleId: (json['teamRoleId'] as num).toInt(),
    );

Map<String, dynamic> _$$AssignUserResponseModelImplToJson(
        _$AssignUserResponseModelImpl instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'userId': instance.userId,
      'teamRoleId': instance.teamRoleId,
    };
