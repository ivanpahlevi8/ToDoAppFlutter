import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/project_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/team_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/todo_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/repositories/performance_remote_repository.dart';

class PerformanceRemoteUsecase {
  final PerformanceRemoteRepository performanceRemoteRepository;

  const PerformanceRemoteUsecase({required this.performanceRemoteRepository});

  TaskEither<BaseException, ToDoPerformanceEntity> getToDoPerformance() {
    return performanceRemoteRepository.getToDoPerformance();
  }

  TaskEither<BaseException, ProjectPerformanceEntity> getProjectPerformance() {
    return performanceRemoteRepository.getProjectPerformance();
  }

  TaskEither<BaseException, TeamPerformanceEntity> getTeamPerformance() {
    return performanceRemoteRepository.getTeamPerformance();
  }
}
