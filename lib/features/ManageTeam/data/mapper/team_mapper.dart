import 'package:to_do_app_flutter/features/ManageTeam/data/models/create_team_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/role_team_input_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/team_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/team_role_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/user_team_member_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/create_team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/role_team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/role_team_input_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/user_team_member_entity.dart';

extension TeamModelMapper on TeamModel {
  TeamEntity toEntity() {
    return TeamEntity(
      teamId: teamId ?? 0,
      teamName: teamName,
      teamDescription: teamDescription,
      teamLeaderId: teamLeaderId,
      teamRoles: teamRoles?.map((role) => role.toEntity()).toList(),
      userMembers: userMembers?.map((user) => user.toEntity()).toList(),
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
      teamRoleId: teamRoleId ?? -1,
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
      createdAt: "",
    );
  }
}

extension CreateUserTeamMemberEntityMapper on UserTeamMemberModel {
  UserTeamMemberEntity toEntity() {
    return UserTeamMemberEntity(
      userId: userId,
      email: userEmail,
      firstName: firstName,
      lastName: lastName,
      createdAt: createdAt,
    );
  }
}

extension CreateUserTeamMemberModelMapper on UserTeamMemberEntity {
  UserTeamMemberModel toModel() {
    return UserTeamMemberModel(
      userId: userId,
      userEmail: email,
      firstName: firstName,
      lastName: lastName,
      createdAt: createdAt,
    );
  }
}

extension InputRoleTeamEntityMapper on RoleTeamInputEntity {
  RoleTeamInputModel toModel() {
    return RoleTeamInputModel(roleName: roleName, teamId: teamId);
  }
}

extension InputRoleTeamModelMapper on RoleTeamInputModel {
  RoleTeamInputEntity toEntity() {
    return RoleTeamInputEntity(teamId: teamId, roleName: roleName);
  }
}
