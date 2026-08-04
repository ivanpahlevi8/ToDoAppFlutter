import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/create_team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/role_team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/role_team_input_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_list_view_entity.dart';

abstract interface class TeamRemoteRepository {
  TaskEither<BaseException, List<TeamListViewEntity>> getAllTeamByUser();
  TaskEither<BaseException, TeamEntity> createNewTeam({
    required CreateTeamEntity createTeam,
  });
  TaskEither<BaseException, String> deleteTeam({required int teamId});
  TaskEither<BaseException, String> unAssignUserFromTeam({
    required String userId,
    required int teamId,
  });
  TaskEither<BaseException, TeamListViewEntity> getTeamDetail({
    required int teamId,
  });
  TaskEither<BaseException, RoleTeamEntity> createTeamRole({
    required RoleTeamInputEntity roleTeamInput,
  });
  TaskEither<BaseException, String> removeTeamRole({required int roleTeamId});
  TaskEither<BaseException, List<UserModel>> searchConnectionUser({
    required String name,
  });
  TaskEither<BaseException, UserModel> assigUserToTeam({
    required String userId,
    required int teamId,
    required int roleTeamId,
  });
  TaskEither<BaseException, List<RoleTeamEntity>> getAllTeamRoles({
    required int teamId,
  });
}
