import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/connection_chart_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/connection_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/project_chart_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/project_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/team_chart_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/team_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/todo_chart_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/todo_performance_entity.dart';

abstract interface class PerformanceRemoteRepository {
  // function to get todo performance
  TaskEither<BaseException, ToDoPerformanceEntity> getToDoPerformance();

  // function to get project performance
  TaskEither<BaseException, ProjectPerformanceEntity> getProjectPerformance();

  // function to get team performance
  TaskEither<BaseException, TeamPerformanceEntity> getTeamPerformance();

  // function to get connection performance
  TaskEither<BaseException, ConnectionPerformanceEntity>
      getConnectionPerformance();

  // function to get todo chart performance
  TaskEither<BaseException, ToDoChartPerformanceEntity> getToDoChartPerformance(
      {required int year});

  // function to get project chart performance
  TaskEither<BaseException, ProjectChartPerformanceEntity>
      getProjectChartPerformance({required int year});

  // function to get team chart performance
  TaskEither<BaseException, TeamChartPerformanceEntity> getTeamChartPerformance(
      {required int year});

  // function to get connection performance
  TaskEither<BaseException, ConnectionChartPerformanceEntity>
      getConnectionChartPerformance({required int year});

  // function to get user detail
  TaskEither<BaseException, UserModel> getUserLoginDetail();
}
