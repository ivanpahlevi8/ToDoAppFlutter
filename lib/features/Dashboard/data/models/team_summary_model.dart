import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/team_model.dart';

part 'team_summary_model.freezed.dart';
part 'team_summary_model.g.dart';

@freezed
class TeamSummaryModel with _$TeamSummaryModel {
  factory TeamSummaryModel(
      {@JsonKey(name: "teamNumberInvolved") required int numberTeamInvolved,
      @JsonKey(name: "teamNumberLead") required int teamNumberLead,
      @JsonKey(name: "topThreeTeamAsLeader")
      required List<TeamModel> topTeamLeader,
      @JsonKey(name: "topThreeTeamAsMember")
      required List<TeamModel> topTeamInvolved}) = _TeamSummaryModel;

  factory TeamSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$TeamSummaryModelFromJson(json);
}
