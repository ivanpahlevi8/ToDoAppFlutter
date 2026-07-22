// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_team_member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserTeamMemberModelImpl _$$UserTeamMemberModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserTeamMemberModelImpl(
      userId: json['id'] as String,
      userEmail: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$UserTeamMemberModelImplToJson(
        _$UserTeamMemberModelImpl instance) =>
    <String, dynamic>{
      'id': instance.userId,
      'email': instance.userEmail,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'createdAt': instance.createdAt,
    };
