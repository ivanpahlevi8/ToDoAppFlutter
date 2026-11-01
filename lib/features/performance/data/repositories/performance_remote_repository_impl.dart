import 'package:fpdart/src/task_either.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/performance/data/datasource/performance_remote_datasource.dart';
import 'package:to_do_app_flutter/features/performance/data/mapper/performance_mapper.dart';
import 'package:to_do_app_flutter/features/performance/data/models/project_performance_model.dart';
import 'package:to_do_app_flutter/features/performance/data/models/team_performance_model.dart';
import 'package:to_do_app_flutter/features/performance/data/models/todo_performance_model.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/project_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/team_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/todo_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/repositories/performance_remote_repository.dart';

class PerformanceRemoteRepositoryImpl implements PerformanceRemoteRepository {
  final PerformanceRemoteDatasource performanceRemoteDatasource;
  final SharedPreferences sharedPreferences;

  const PerformanceRemoteRepositoryImpl({
    required this.performanceRemoteDatasource,
    required this.sharedPreferences,
  });

  @override
  TaskEither<BaseException, ToDoPerformanceEntity> getToDoPerformance() {
    // get login user id
    final getLoginUserId = sharedPreferences.getString("user_id");

    if (getLoginUserId == null) {
      return TaskEither.left(BaseException(
        stackTrace: StackTrace.current,
        message: "Error when getting to do performance, user id not found",
      ));
    }

    // do request
    final toDoPerformanceTask =
        performanceRemoteDatasource.getToDoPerformance(userId: getLoginUserId);

    // return task response
    return toDoPerformanceTask.flatMap((toDoPerformanceResponse) {
      if (toDoPerformanceResponse.result == null ||
          !toDoPerformanceResponse.isSuccess) {
        return TaskEither.left(BaseException(
          message: toDoPerformanceResponse.message,
          error: "Error happen : ${toDoPerformanceResponse.message}",
          stackTrace: StackTrace.current,
        ));
      }

      ToDoPerformanceModel getData = toDoPerformanceResponse.result!;

      // parse into entity an return it
      return TaskEither.right(getData.toEntity());
    });
  }

  @override
  TaskEither<BaseException, ProjectPerformanceEntity> getProjectPerformance() {
    // get login user id
    final getLoginUserId = sharedPreferences.getString("user_id");

    if (getLoginUserId == null) {
      return TaskEither.left(BaseException(
        error: "User id not exist",
        message: "User id not exist",
        stackTrace: StackTrace.current,
      ));
    }

    // get project performance task
    final getProjectPerformanceTask = performanceRemoteDatasource
        .getProjectPerformance(userId: getLoginUserId);

    return getProjectPerformanceTask.flatMap((projectPerformanceResponse) {
      // check on response
      if (projectPerformanceResponse.result == null ||
          !projectPerformanceResponse.isSuccess) {
        return TaskEither.left(BaseException(
          message: "Error Happen : ${projectPerformanceResponse.message}",
          stackTrace: StackTrace.current,
        ));
      }

      // get result
      ProjectPerformanceModel projectPerformanceModel =
          projectPerformanceResponse.result!;

      return TaskEither.right(projectPerformanceModel.toEntity());
    });
  }

  @override
  TaskEither<BaseException, TeamPerformanceEntity> getTeamPerformance() {
    // get login team
    final getLoginUserId = sharedPreferences.getString("user_id");

    // check login user id
    if (getLoginUserId == null) {
      return TaskEither.left(BaseException(
        error: "Error Happen, user id not found",
        message: "Error Happen, user id not found",
        stackTrace: StackTrace.current,
      ));
    }

    // get team performance task
    final getTeamPerformanceTask =
        performanceRemoteDatasource.getTeamPerformance(userId: getLoginUserId);

    return getTeamPerformanceTask.flatMap((teamPerformanceResponse) {
      // check response
      if (teamPerformanceResponse.result == null ||
          !teamPerformanceResponse.isSuccess) {
        return TaskEither.left(BaseException(
          message: "Error happen : ${teamPerformanceResponse.message}",
          error: "Error happen : ${teamPerformanceResponse.message}",
          stackTrace: StackTrace.current,
        ));
      }

      // get team performance model
      TeamPerformanceModel getTeamPerformance = teamPerformanceResponse.result!;

      return TaskEither.right(getTeamPerformance.toEntity());
    });
  }
}
