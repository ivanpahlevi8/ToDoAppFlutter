import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/role_team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/user_team_member_entity.dart';

part 'team_entity.freezed.dart';

@freezed
class TeamEntity with _$TeamEntity {
  factory TeamEntity({
    required int teamId,
    required String teamName,
    required String teamDescription,
    required String teamLeaderId,
    required String createdAt,
    List<UserTeamMemberEntity>? userMembers,
    List<RoleTeamEntity>? teamRoles,
  }) = _TeamEntity;
}
