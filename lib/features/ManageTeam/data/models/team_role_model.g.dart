// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_role_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamRoleModelImpl _$$TeamRoleModelImplFromJson(Map<String, dynamic> json) =>
    _$TeamRoleModelImpl(
      teamRoleId: (json['teamRoleId'] as num).toInt(),
      roleName: json['roleName'] as String,
      teamId: (json['teamId'] as num).toInt(),
    );

Map<String, dynamic> _$$TeamRoleModelImplToJson(_$TeamRoleModelImpl instance) =>
    <String, dynamic>{
      'teamRoleId': instance.teamRoleId,
      'roleName': instance.roleName,
      'teamId': instance.teamId,
    };
