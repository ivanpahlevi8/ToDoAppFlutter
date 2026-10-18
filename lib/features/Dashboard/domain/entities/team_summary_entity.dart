import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_entity.dart';

part 'team_summary_entity.freezed.dart';

@freezed
class TeamSummaryEntity with _$TeamSummaryEntity {
  factory TeamSummaryEntity({
    required int numberTeamInvolved,
    required int numberTeamLead,
    required List<TeamEntity> topTeamInvolved,
    required List<TeamEntity> topTeamLead,
  }) = _TeamSummaryEntity;
}
