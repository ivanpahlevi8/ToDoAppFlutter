// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateProjectModelImpl _$$CreateProjectModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateProjectModelImpl(
      projectName: json['projectName'] as String,
      projectDescription: json['projectDescription'] as String,
      projectUserLead: json['projectUserLeadId'] as String,
      projectStatus: json['projectStatus'] as String,
      projectTeamId: (json['projectTeamId'] as num).toInt(),
    );

Map<String, dynamic> _$$CreateProjectModelImplToJson(
        _$CreateProjectModelImpl instance) =>
    <String, dynamic>{
      'projectName': instance.projectName,
      'projectDescription': instance.projectDescription,
      'projectUserLeadId': instance.projectUserLead,
      'projectStatus': instance.projectStatus,
      'projectTeamId': instance.projectTeamId,
    };
