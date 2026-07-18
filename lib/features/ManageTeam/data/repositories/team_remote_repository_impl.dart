import 'package:fpdart/fpdart.dart';
import 'package:fpdart/src/task_either.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/ManageConnections/data/datasource/connection_remote_datasource.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/datasource/team_remote_datasource.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/mapper/team_mapper.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/create_team_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/team_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/create_team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_list_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/repositories/team_remote_repository.dart';

class TeamRemoteRepositoryImpl implements TeamRemoteRepository {
  final TeamRemoteDatasource teamRemoteDatasource;
  final ConnectionRemoteDatasource connectionRemoteDatasource;
  final SharedPreferences sharedPreferences;

  TeamRemoteRepositoryImpl({
    required this.teamRemoteDatasource,
    required this.sharedPreferences,
    required this.connectionRemoteDatasource,
  });

  @override
  TaskEither<BaseException, List<TeamListViewEntity>> getAllTeamByUser() {
    // get login user id
    final getUserLoginId = sharedPreferences.getString("user_id") ?? "";

    // get all team
    final getAllTeamTask = teamRemoteDatasource.getAllTeam(
      userId: getUserLoginId,
    );

    return getAllTeamTask.flatMap((getAllTeamResponse) {
      if (!getAllTeamResponse.isSuccess || getAllTeamResponse.result == null) {
        return TaskEither.left(
          BaseException(
            message: "Error Happen : ${getAllTeamResponse.message}",
            error: "Error Happen : ${getAllTeamResponse.message}",
            stackTrace: StackTrace.current,
          ),
        );
      }

      List<TeamModel> getAllTeamModel = getAllTeamResponse.result!;

      List<TaskEither<BaseException, TeamListViewEntity>> executedTask = [];

      getAllTeamModel.map((team) {
        // get user id
        String getUserId = team.teamLeaderId;

        final getUserTask = connectionRemoteDatasource.getUserById(
          userId: getUserId,
        );

        executedTask.add(
          getUserTask.flatMap((userResponse) {
            if (!userResponse.isSuccess || userResponse.result == null) {
              return TaskEither.left(
                BaseException(
                  error: "Error when getting user : ${userResponse.message}",
                  message: userResponse.message,
                  stackTrace: StackTrace.current,
                ),
              );
            }

            UserModel getUser = userResponse.result!;

            return TaskEither.right(
              TeamListViewEntity(
                teamEntity: team.toEntity(),
                teamLeader: getUser,
              ),
            );
          }),
        );
      }).toList();

      return TaskEither.sequenceList<BaseException, TeamListViewEntity>(
        executedTask,
      );
    });
  }

  @override
  TaskEither<BaseException, TeamEntity> createNewTeam({
    required CreateTeamEntity createTeam,
  }) {
    // get login user id
    String loginUserId = sharedPreferences.getString("user_id") ?? "";

    if (loginUserId == "") {
      return TaskEither.left(
        BaseException(
          message: "No Login User Id",
          error: "No Login User Id",
          stackTrace: StackTrace.current,
        ),
      );
    }

    // get team model
    CreateTeamModel createTeamModel = CreateTeamModel(
      teamName: createTeam.teamName,
      teamDescription: createTeam.teamDescription,
      teamLeader: loginUserId,
    );

    final responseTask = teamRemoteDatasource.createTeam(
      createTeamModel: createTeamModel,
    );

    return responseTask.flatMap((teamResponse) {
      if (!teamResponse.isSuccess || teamResponse.result == null) {
        return TaskEither.left(
          BaseException(
            message: teamResponse.message,
            error: "Error Happen : ${teamResponse.message}",
            stackTrace: StackTrace.current,
          ),
        );
      }

      return TaskEither.right(teamResponse.result!.toEntity());
    });
  }
}
