// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTeamModelImpl _$$CreateTeamModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTeamModelImpl(
      teamName: json['teamName'] as String,
      teamDescription: json['teamDescription'] as String,
      teamLeader: json['teamLeader'] as String,
    );

Map<String, dynamic> _$$CreateTeamModelImplToJson(
        _$CreateTeamModelImpl instance) =>
    <String, dynamic>{
      'teamName': instance.teamName,
      'teamDescription': instance.teamDescription,
      'teamLeader': instance.teamLeader,
    };
