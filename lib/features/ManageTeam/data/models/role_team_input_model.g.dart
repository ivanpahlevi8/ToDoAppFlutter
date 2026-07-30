// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_team_input_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoleTeamInputModelImpl _$$RoleTeamInputModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RoleTeamInputModelImpl(
      roleName: json['roleName'] as String,
      teamId: (json['teamId'] as num).toInt(),
    );

Map<String, dynamic> _$$RoleTeamInputModelImplToJson(
        _$RoleTeamInputModelImpl instance) =>
    <String, dynamic>{
      'roleName': instance.roleName,
      'teamId': instance.teamId,
    };
