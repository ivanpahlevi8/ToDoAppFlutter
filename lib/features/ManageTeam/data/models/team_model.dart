import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/team_role_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/user_team_member_model.dart';

part 'team_model.freezed.dart';
part 'team_model.g.dart';

@freezed
class TeamModel with _$TeamModel {
  factory TeamModel({
    @JsonKey(name: "teamId") required int? teamId,
    @JsonKey(name: "teamName") required String teamName,
    @JsonKey(name: "teamDescription") required String teamDescription,
    @JsonKey(name: "teamLeader") required String teamLeaderId,
    @JsonKey(name: "createdAt") required String createdAt,
    @JsonKey(name: "userMember") List<UserTeamMemberModel>? userMembers,
    @JsonKey(name: "roleMember") List<TeamRoleModel>? teamRoles,
  }) = _TeamModel;

  factory TeamModel.fromJson(Map<String, dynamic> json) =>
      _$TeamModelFromJson(json);
}
