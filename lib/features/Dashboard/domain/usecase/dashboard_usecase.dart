import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/project_summary_entity.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/todo_summary_entity.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/repositories/dashboard_repository.dart';

class DashboardUsecase {
  final DashboardRepository dashboardRepository;

  DashboardUsecase({required this.dashboardRepository});

  TaskEither<BaseException, ProjectSummaryEntity> getProjectSummary() {
    return dashboardRepository.getProjectSummaryDashboard();
  }

  TaskEither<BaseException, ToDoSummaryEntity> getToDoSummary() {
    return dashboardRepository.getToDoSummaryDashboard();
  }
}
