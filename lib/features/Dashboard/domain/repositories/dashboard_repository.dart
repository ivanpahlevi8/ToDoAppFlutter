import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/connection_summary_entity.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/project_summary_entity.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/team_summary_entity.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/todo_summary_entity.dart';

abstract interface class DashboardRepository {
  TaskEither<BaseException, ProjectSummaryEntity> getProjectSummaryDashboard();
  TaskEither<BaseException, ToDoSummaryEntity> getToDoSummaryDashboard();
  TaskEither<BaseException, TeamSummaryEntity> getTeamSummaryDashboard();
  TaskEither<BaseException, ConnectionSummaryEntity>
      getConnectionSummaryDashboard();
}
