// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamModelImpl _$$TeamModelImplFromJson(Map<String, dynamic> json) =>
    _$TeamModelImpl(
      teamId: (json['teamId'] as num?)?.toInt(),
      teamName: json['teamName'] as String,
      teamDescription: json['teamDescription'] as String,
      teamLeaderId: json['teamLeader'] as String,
      createdAt: json['createdAt'] as String,
      userMembers: (json['userMember'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      teamRoles: (json['roleMember'] as List<dynamic>?)
          ?.map((e) => TeamRoleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TeamModelImplToJson(_$TeamModelImpl instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'teamName': instance.teamName,
      'teamDescription': instance.teamDescription,
      'teamLeader': instance.teamLeaderId,
      'createdAt': instance.createdAt,
      'userMember': instance.userMembers,
      'roleMember': instance.teamRoles,
    };
