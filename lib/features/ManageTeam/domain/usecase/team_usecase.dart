import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/create_team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_list_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/repositories/team_remote_repository.dart';

class TeamUsecase {
  final TeamRemoteRepository teamRemoteRepository;

  TeamUsecase({required this.teamRemoteRepository});

  // function to get all team by userid
  TaskEither<BaseException, List<TeamListViewEntity>> getAllTeamByUserId() {
    return teamRemoteRepository.getAllTeamByUser();
  }

  // function to create team
  TaskEither<BaseException, TeamEntity> createTeam({
    required CreateTeamEntity createTeamEntity,
  }) {
    return teamRemoteRepository.createNewTeam(createTeam: createTeamEntity);
  }

  // function to delete team
  TaskEither<BaseException, String> deleteTeam({required int teamId}) {
    return teamRemoteRepository.deleteTeam(teamId: teamId);
  }

  // function to un assign user from team
  TaskEither<BaseException, String> unAssignUserTeam({
    required String userId,
    required int teamId,
  }) {
    return teamRemoteRepository.unAssignUserFromTeam(
      userId: userId,
      teamId: teamId,
    );
  }
}
