// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectModelImpl _$$ProjectModelImplFromJson(Map<String, dynamic> json) =>
    _$ProjectModelImpl(
      projectId: (json['projectId'] as num).toInt(),
      projectName: json['projectName'] as String,
      projectDescription: json['projectDescription'] as String,
      projectUserLeadId: json['projectUserLeadId'] as String,
      projectStatus: json['projectStatus'] as String,
      projectTeamId: (json['projectTeamId'] as num).toInt(),
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$ProjectModelImplToJson(_$ProjectModelImpl instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'projectName': instance.projectName,
      'projectDescription': instance.projectDescription,
      'projectUserLeadId': instance.projectUserLeadId,
      'projectStatus': instance.projectStatus,
      'projectTeamId': instance.projectTeamId,
      'createdAt': instance.createdAt,
    };
