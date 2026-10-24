import 'package:fpdart/fpdart.dart';
import 'package:fpdart/src/task_either.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/Dashboard/data/datasource/dashboard_remote_datasource.dart';
import 'package:to_do_app_flutter/features/Dashboard/data/mapper/dashboard_mapper.dart';
import 'package:to_do_app_flutter/features/Dashboard/data/models/project_summary_model.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/connection_summary_entity.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/connection_user_item_summary_entity.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/project_summary_entity.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/team_summary_entity.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/todo_summary_entity.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/repositories/dashboard_repository.dart';
import 'package:to_do_app_flutter/features/ManageConnections/data/datasource/connection_remote_datasource.dart';
import 'package:to_do_app_flutter/features/ManageConnections/data/mappers/register_mapper.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  final SharedPreferences sharedPreferences;
  final DashboardRemoteDatasource dashboardRemoteDatasource;
  final ConnectionRemoteDatasource connectionRemoteDatasource;

  DashboardRepositoryImpl({
    required this.sharedPreferences,
    required this.dashboardRemoteDatasource,
    required this.connectionRemoteDatasource,
  });

  @override
  TaskEither<BaseException, ProjectSummaryEntity> getProjectSummaryDashboard() {
    // get login user id
    String loginUserId = sharedPreferences.getString("user_id") ?? "";

    if (loginUserId == "") {
      return TaskEither.left(BaseException(
        message: "No login user id found...",
        stackTrace: StackTrace.current,
      ));
    }

    // do request
    final response = dashboardRemoteDatasource.getProjectSummaryDashboard(
        userId: loginUserId);

    // check on response
    return response.flatMap((resp) {
      // check for success response
      if (resp.result == null || !resp.isSuccess) {
        return TaskEither.left(BaseException(
            message: resp.message, stackTrace: StackTrace.current));
      }

      // get result model
      ProjectSummaryModel projectSummaryModel = resp.result!;

      // return as dto
      return TaskEither.right(projectSummaryModel.toEntity());
    });
  }

  @override
  TaskEither<BaseException, ToDoSummaryEntity> getToDoSummaryDashboard() {
    // get login user id
    String loginUserId = sharedPreferences.getString("user_id") ?? "";

    // get to do summary response
    final getToDoResponse =
        dashboardRemoteDatasource.getToDoSummaryDashboard(userId: loginUserId);

    return getToDoResponse.flatMap((toDoResponse) {
      // check response
      if (toDoResponse.result == null || !toDoResponse.isSuccess) {
        return TaskEither.left(BaseException(
          message: "Error when get to do summary : ${toDoResponse.message}",
          stackTrace: StackTrace.current,
        ));
      }

      // get to do summary model
      final getToDoSummary = toDoResponse.result!;

      return TaskEither.right(getToDoSummary.toEntity());
    });
  }

  @override
  TaskEither<BaseException, TeamSummaryEntity> getTeamSummaryDashboard() {
    // get login user id
    String loginUserId = sharedPreferences.getString("user_id") ?? "";

    // do request
    final getTeamSummaryResponse =
        dashboardRemoteDatasource.getTeamSummaryDashboard(userId: loginUserId);

    return getTeamSummaryResponse.flatMap((getTeamResponse) {
      // check for response
      if (getTeamResponse.result == null || !getTeamResponse.isSuccess) {
        return TaskEither.left(BaseException(
            message: getTeamResponse.message, stackTrace: StackTrace.current));
      }

      // get data
      final getData = getTeamResponse.result!;

      // return data
      return TaskEither.right(getData.toEntity());
    });
  }

  @override
  TaskEither<BaseException, ConnectionSummaryEntity>
      getConnectionSummaryDashboard() {
    // get login user id
    String loginUserId = sharedPreferences.getString("user_id") ?? "";

    // get connection summary
    final getConnectionSummaryTask = dashboardRemoteDatasource
        .getConnectionSummaryDashboard(userId: loginUserId);

    return getConnectionSummaryTask.flatMap((getConnectionSummaryResponse) {
      // check for response
      if (getConnectionSummaryResponse.result == null &&
          !getConnectionSummaryResponse.isSuccess) {
        return TaskEither.left(BaseException(
          message: getConnectionSummaryResponse.message,
          stackTrace: StackTrace.current,
        ));
      }

      // get connection summary model
      final getConnectionSummaryModel = getConnectionSummaryResponse.result!;

      // create list of task
      List<TaskEither<BaseException, ConnectionUserItemSummaryEntity>>
          getUserReferenceTasks = [];

      // loop through all top connection
      for (var connectionItem in getConnectionSummaryModel.topThreeConnection) {
        // get user id
        String getUserId = "";

        if (connectionItem.userConnectionId == loginUserId) {
          getUserId = connectionItem.userOwnerId;
        } else {
          getUserId = connectionItem.userConnectionId;
        }

        // get user
        final getUserTask =
            connectionRemoteDatasource.getUserById(userId: getUserId);

        getUserReferenceTasks.add(getUserTask.flatMap((getUserResponse) {
          // check response
          if (getUserResponse.result == null || !getUserResponse.isSuccess) {
            return TaskEither.left(BaseException(
                message: "Error Happen : ${getUserResponse.message}",
                stackTrace: StackTrace.current));
          }

          // get user data
          final getUserData = getUserResponse.result!;

          // create connection user item summary
          ConnectionUserItemSummaryEntity connectionUserItemSummaryEntity =
              ConnectionUserItemSummaryEntity(
                  connectionEntity: connectionItem.toEntity(),
                  user: getUserData);

          return TaskEither.right(connectionUserItemSummaryEntity);
        }));
      }

      // execute the task
      final getUserReferences = getUserReferenceTasks.sequenceTaskEither();

      return getUserReferences.flatMap((getUserReferenceResponse) {
        return TaskEither.right(
            getConnectionSummaryModel.toEntity(getUserReferenceResponse));
      });
    });
  }
}
