import 'package:to_do_app_flutter/features/ManageTeam/data/models/create_team_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/team_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/team_role_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/create_team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/role_team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_entity.dart';

extension TeamModelMapper on TeamModel {
  TeamEntity toEntity() {
    return TeamEntity(
      teamId: teamId ?? 0,
      teamName: teamName,
      teamDescription: teamDescription,
      teamLeaderId: teamLeaderId,
      teamRoles: teamRoles?.map((role) => role.toEntity()).toList(),
      createdAt: createdAt,
    );
  }
}

extension TeamEntityMapper on TeamEntity {
  TeamModel toModel() {
    return TeamModel(
      teamId: teamId,
      teamName: teamName,
      teamDescription: teamDescription,
      teamLeaderId: teamLeaderId,
      createdAt: createdAt,
    );
  }
}

extension CreateTeamModelMapper on CreateTeamModel {
  CreateTeamEntity toEntity() {
    return CreateTeamEntity(
      teamName: teamName,
      teamDescription: teamDescription,
    );
  }
}

extension CreateTeamEntityMapper on CreateTeamEntity {
  CreateTeamModel toModel() {
    return CreateTeamModel(
      teamName: teamName,
      teamDescription: teamDescription,
      teamLeader: "",
    );
  }
}

extension CreateTeamRoleEntityMapper on TeamRoleModel {
  RoleTeamEntity toEntity() {
    return RoleTeamEntity(
      teamRoleId: teamRoleId,
      teamRoleName: roleName,
      teamId: teamId,
    );
  }
}

extension CreateTeamRoleModelMapper on RoleTeamEntity {
  TeamRoleModel toModel() {
    return TeamRoleModel(
      teamRoleId: teamRoleId,
      roleName: teamRoleName,
      teamId: teamId,
    );
  }
}
