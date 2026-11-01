import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/project_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/team_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/todo_performance_entity.dart';

abstract interface class PerformanceRemoteRepository {
  // function to get todo performance
  TaskEither<BaseException, ToDoPerformanceEntity> getToDoPerformance();

  // function to get project performance
  TaskEither<BaseException, ProjectPerformanceEntity> getProjectPerformance();

  // function to get team performance
  TaskEither<BaseException, TeamPerformanceEntity> getTeamPerformance();
}
