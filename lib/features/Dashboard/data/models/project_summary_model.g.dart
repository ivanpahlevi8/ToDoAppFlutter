// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectSummaryModelImpl _$$ProjectSummaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectSummaryModelImpl(
      projectInvolvedNumber: (json['projectInvolvedNumber'] as num).toInt(),
      projectLeadNumber: (json['projectLeadNumber'] as num).toInt(),
      projectNumberMember: (json['projectMemberNumber'] as num).toInt(),
      topThreeProjectAsMember:
          (json['topThreeProjectAsMember'] as List<dynamic>)
              .map((e) => ProjectModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      topThreeProjectAsLeader:
          (json['topThreeProjectAsLeader'] as List<dynamic>)
              .map((e) => ProjectModel.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$ProjectSummaryModelImplToJson(
        _$ProjectSummaryModelImpl instance) =>
    <String, dynamic>{
      'projectInvolvedNumber': instance.projectInvolvedNumber,
      'projectLeadNumber': instance.projectLeadNumber,
      'projectMemberNumber': instance.projectNumberMember,
      'topThreeProjectAsMember': instance.topThreeProjectAsMember,
      'topThreeProjectAsLeader': instance.topThreeProjectAsLeader,
    };
