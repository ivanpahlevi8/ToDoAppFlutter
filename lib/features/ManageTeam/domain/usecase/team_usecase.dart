import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_list_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/repositories/team_remote_repository.dart';

class TeamUsecase {
  final TeamRemoteRepository teamRemoteRepository;

  TeamUsecase({required this.teamRemoteRepository});

  // function to get all team by userid
  TaskEither<BaseException, List<TeamListViewEntity>> getAllTeamByUserId() {
    return teamRemoteRepository.getAllTeamByUser();
  }
}
