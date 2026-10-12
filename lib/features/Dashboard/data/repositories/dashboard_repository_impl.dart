import 'package:fpdart/src/task_either.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/Dashboard/data/datasource/dashboard_remote_datasource.dart';
import 'package:to_do_app_flutter/features/Dashboard/data/mapper/dashboard_mapper.dart';
import 'package:to_do_app_flutter/features/Dashboard/data/models/project_summary_model.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/project_summary_entity.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/repositories/dashboard_repository.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  final SharedPreferences sharedPreferences;
  final DashboardRemoteDatasource dashboardRemoteDatasource;

  DashboardRepositoryImpl(
      {required this.sharedPreferences,
      required this.dashboardRemoteDatasource});

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
}
