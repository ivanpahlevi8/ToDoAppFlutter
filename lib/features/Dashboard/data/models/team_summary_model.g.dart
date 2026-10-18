// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamSummaryModelImpl _$$TeamSummaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamSummaryModelImpl(
      numberTeamInvolved: (json['teamNumberInvolved'] as num).toInt(),
      teamNumberLead: (json['teamNumberLead'] as num).toInt(),
      topTeamLeader: (json['topThreeTeamAsLeader'] as List<dynamic>)
          .map((e) => TeamModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      topTeamInvolved: (json['topThreeTeamAsMember'] as List<dynamic>)
          .map((e) => TeamModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TeamSummaryModelImplToJson(
        _$TeamSummaryModelImpl instance) =>
    <String, dynamic>{
      'teamNumberInvolved': instance.numberTeamInvolved,
      'teamNumberLead': instance.teamNumberLead,
      'topThreeTeamAsLeader': instance.topTeamLeader,
      'topThreeTeamAsMember': instance.topTeamInvolved,
    };
