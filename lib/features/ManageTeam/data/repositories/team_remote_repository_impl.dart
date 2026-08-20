import 'package:fpdart/fpdart.dart';
import 'package:fpdart/src/task_either.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/response_model.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/ManageConnections/data/datasource/connection_remote_datasource.dart';
import 'package:to_do_app_flutter/features/ManageConnections/data/models/connection_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/datasource/team_remote_datasource.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/mapper/team_mapper.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/assign_user_response_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/create_team_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/role_team_input_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/team_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/create_team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/role_team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/role_team_input_entity.dart';
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
                isTeamLead: getUserLoginId == getUser.userId,
                loginUserId: sharedPreferences.getString("user_id") ?? "",
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

  @override
  TaskEither<BaseException, String> deleteTeam({required int teamId}) {
    // delete
    final deleteTask = teamRemoteDatasource.deleteTeam(teamId: teamId);

    return deleteTask.flatMap((response) {
      if (!response.isSuccess || response.result == null) {
        return TaskEither.left(
          BaseException(
            error: response.message,
            message: response.message,
            stackTrace: StackTrace.current,
          ),
        );
      }

      return TaskEither.right(response.result!);
    });
  }

  @override
  TaskEither<BaseException, String> unAssignUserFromTeam({
    required String userId,
    required int teamId,
  }) {
    final getUserId = userId == ""
        ? sharedPreferences.getString("user_id") ?? ""
        : userId;

    final unAssignTask = teamRemoteDatasource.unAssignUserFromTeam(
      userId: getUserId,
      teamId: teamId,
    );

    return unAssignTask.flatMap((response) {
      if (!response.isSuccess || response.result == null) {
        return TaskEither.left(
          BaseException(
            error: "Error Happen : ${response.message}",
            message: response.message,
            stackTrace: StackTrace.current,
          ),
        );
      }

      return TaskEither.right(response.result!);
    });
  }

  @override
  TaskEither<BaseException, TeamListViewEntity> getTeamDetail({
    required int teamId,
  }) {
    // get team detail
    final getTeamDetailTask = teamRemoteDatasource.getTeamDetail(
      teamId: teamId,
    );

    return getTeamDetailTask.flatMap((teamDetailResponse) {
      if (!teamDetailResponse.isSuccess || teamDetailResponse.result == null) {
        return TaskEither.left(
          BaseException(
            error: "Error happen : ${teamDetailResponse.message}",
            message: teamDetailResponse.message,
          ),
        );
      }

      TeamModel getTeamModelData = teamDetailResponse.result!;

      final getTeamLeadTask = connectionRemoteDatasource.getUserById(
        userId: getTeamModelData.teamLeaderId,
      );

      return getTeamLeadTask.flatMap((teamLeadResponse) {
        if (!teamLeadResponse.isSuccess || teamLeadResponse.result == null) {
          return TaskEither.left(
            BaseException(
              error:
                  "Error happen when getting team lead : ${teamLeadResponse.message}",
              message: teamLeadResponse.message,
              stackTrace: StackTrace.current,
            ),
          );
        }

        UserModel getTeamLead = teamLeadResponse.result!;

        return TaskEither.right(
          TeamListViewEntity(
            teamEntity: getTeamModelData.toEntity(),
            teamLeader: getTeamLead,
            isTeamLead:
                (sharedPreferences.getString("user_id") ?? "") ==
                getTeamLead.userId,
            loginUserId: sharedPreferences.getString("user_id") ?? "",
          ),
        );
      });
    });
  }

  @override
  TaskEither<BaseException, RoleTeamEntity> createTeamRole({
    required RoleTeamInputEntity roleTeamInput,
  }) {
    // parse input from entity to model
    RoleTeamInputModel inputModel = roleTeamInput.toModel();

    // create role on team
    final createRoleResponseTask = teamRemoteDatasource.createRoleTeam(
      roleTeamInput: inputModel,
    );

    return createRoleResponseTask.flatMap((response) {
      if (!response.isSuccess || response.result == null) {
        return TaskEither.left(
          BaseException(
            stackTrace: StackTrace.current,
            error: "Error happen : ${response.message}",
            message: response.message,
          ),
        );
      }

      // return response
      return TaskEither.right(response.result!.toEntity());
    });
  }

  @override
  TaskEither<BaseException, String> removeTeamRole({required int roleTeamId}) {
    // remove team role
    final responseRemoveTeamRole = teamRemoteDatasource.deleteRoleTeam(
      roleTeamId: roleTeamId,
    );

    return responseRemoveTeamRole.flatMap((response) {
      if (!response.isSuccess || response.result == null) {
        return TaskEither.left(
          BaseException(
            error: "Error Happen : ${response.message}",
            stackTrace: StackTrace.current,
            message: "",
          ),
        );
      }

      return TaskEither.right(response.result!);
    });
  }

  @override
  TaskEither<BaseException, List<UserModel>> searchConnectionUser({
    required String name,
  }) {
    // get login user id
    String loginUserId = sharedPreferences.getString("user_id") ?? "";

    // get all search connection
    final allConnectionTask = teamRemoteDatasource.searchConnectionUser(
      name: name,
      loginUserId: loginUserId,
    );

    return allConnectionTask.flatMap((response) {
      if (!response.isSuccess || response.result == null) {
        return TaskEither.left(
          BaseException(
            message: response.message,
            error: "Error happen when getting connection : ${response.message}",
            stackTrace: StackTrace.current,
          ),
        );
      }

      // get all connection
      List<ConnectionModel> allConnection = response.result!;

      List<TaskEither<BaseException, UserModel>> executeTask = [];

      allConnection.map((connection) {
        // get connection user id
        String getConnectionUserId = (connection.userOwnerId == loginUserId)
            ? connection.userConnectionId
            : connection.userOwnerId;

        // get user
        TaskEither<BaseException, ResponseModel<UserModel>> getUserTask =
            connectionRemoteDatasource.getUserById(userId: getConnectionUserId);

        // check response
        executeTask.add(
          getUserTask.flatMap((getUserResponse) {
            if (!getUserResponse.isSuccess || getUserResponse.result == null) {
              return TaskEither.left(
                BaseException(
                  message: getUserResponse.message,
                  error:
                      "Error happen when getting user : ${getUserResponse.message}",
                  stackTrace: StackTrace.current,
                ),
              );
            }

            return TaskEither.right(getUserResponse.result!);
          }),
        );
      }).toList();

      return TaskEither.sequenceList(executeTask);
    });
  }

  @override
  TaskEither<BaseException, UserModel> assigUserToTeam({
    required String userId,
    required int teamId,
    required int roleTeamId,
  }) {
    // assign user
    final assignUserTask = teamRemoteDatasource.assignUserToTeam(
      userId: userId,
      teamId: teamId,
      teamRoleId: roleTeamId,
    );

    return assignUserTask.flatMap((response) {
      if (!response.isSuccess || response.result == null) {
        return TaskEither.left(
          BaseException(
            message: response.message,
            error: "Error happen : ${response.message}",
            stackTrace: StackTrace.current,
          ),
        );
      }

      // get assign user model response
      AssignUserResponseModel getAssignResponse = response.result!;

      // get user model
      final getUserTask = connectionRemoteDatasource.getUserById(
        userId: getAssignResponse.userId,
      );

      return getUserTask.flatMap((getUserResponse) {
        if (!getUserResponse.isSuccess || getUserResponse.result == null) {
          return TaskEither.left(
            BaseException(
              error:
                  "Error happen when getting user : ${getUserResponse.message}",
              message: getUserResponse.message,
              stackTrace: StackTrace.current,
            ),
          );
        }

        return TaskEither.right(getUserResponse.result!);
      });
    });
  }

  @override
  TaskEither<BaseException, List<RoleTeamEntity>> getAllTeamRoles({
    required int teamId,
  }) {
    // get allt eam roles task
    final getAllTeamRolesTask = teamRemoteDatasource.getAllTeamRoles(
      teamId: teamId,
    );

    return getAllTeamRolesTask.flatMap((teamRolesResponse) {
      if (!teamRolesResponse.isSuccess || teamRolesResponse.result == null) {
        return TaskEither.left(
          BaseException(
            error: "Error Happen : ${teamRolesResponse.message}",
            message: teamRolesResponse.message,
            stackTrace: StackTrace.current,
          ),
        );
      }

      final getTeamRolesModel = teamRolesResponse.result!;

      return TaskEither.right(
        getTeamRolesModel.map((item) {
          return item.toEntity();
        }).toList(),
      );
    });
  }
}
