import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/connection/apis.dart';
import 'package:to_do_app_flutter/core/connection/network_service.dart';
import 'package:to_do_app_flutter/core/connection/validators.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/response_model.dart';
import 'package:to_do_app_flutter/features/Dashboard/data/models/connection_summary_model.dart';
import 'package:to_do_app_flutter/features/Dashboard/data/models/project_summary_model.dart';
import 'package:to_do_app_flutter/features/Dashboard/data/models/team_summary_model.dart';
import 'package:to_do_app_flutter/features/Dashboard/data/models/todo_summary_model.dart';

abstract interface class DashboardRemoteDatasource {
  // function to get project dashboard summary
  TaskEither<BaseException, ResponseModel<ProjectSummaryModel>>
      getProjectSummaryDashboard({required String userId});

  // function to get todo dashboard summary
  TaskEither<BaseException, ResponseModel<ToDoSummaryModel>>
      getToDoSummaryDashboard({required String userId});

  // function to get team dashboard summary
  TaskEither<BaseException, ResponseModel<TeamSummaryModel>>
      getTeamSummaryDashboard({required String userId});

  // function to get connection dasjboard summary
  TaskEither<BaseException, ResponseModel<ConnectionSummaryModel>>
      getConnectionSummaryDashboard({required String userId});
}

class DashboardRemoteDatasourceImpl implements DashboardRemoteDatasource {
  // create instance for remote request
  final Apis apis;
  final NetworkService service;
  final NetworkValidator validator;

  DashboardRemoteDatasourceImpl({
    required this.apis,
    required this.service,
    required this.validator,
  });

  @override
  TaskEither<BaseException, ResponseModel<ProjectSummaryModel>>
      getProjectSummaryDashboard({required String userId}) {
    // create url
    final getUrl = apis.getProjectSummaryDashboard(userId: userId);

    // do request
    final response = service
        .get(getUrl, null, headers: {"Content-Type": "application/json"})
        .flatMap((body) => TaskEither.fromEither(validator.validateBody(body)))
        .flatMap((json) => TaskEither.fromEither(validator.validateJson(json)))
        .flatMap(
            (mapped) => TaskEither.fromEither(validator.validateMap(mapped)))
        .map((data) {
          return ResponseModel.fromJson(data, (child) {
            return ProjectSummaryModel.fromJson(child as Map<String, dynamic>);
          });
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<ToDoSummaryModel>>
      getToDoSummaryDashboard({required String userId}) {
    // get api url
    final getApiUrl = apis.getToDoSummaryDashboard(userId: userId);

    // do request
    final response = service
        .get(getApiUrl, null, headers: {"Content-Type": "application/json"})
        .flatMap((r) => TaskEither.fromEither(validator.validateBody(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateJson(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateMap(r)))
        .map((data) {
          return ResponseModel.fromJson(
              data,
              (json) =>
                  ToDoSummaryModel.fromJson(json as Map<String, dynamic>));
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<TeamSummaryModel>>
      getTeamSummaryDashboard({required String userId}) {
    // get api url
    final getApiUrl = apis.getTeamSummaryDahsboard(userId: userId);

    // do request
    final response = service
        .get(getApiUrl, null, headers: {"Content-Tyoe": "application/json"})
        .flatMap((r) => TaskEither.fromEither(validator.validateBody(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateJson(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateMap(r)))
        .map((r) {
          return ResponseModel.fromJson(
              r,
              (json) =>
                  TeamSummaryModel.fromJson(json as Map<String, dynamic>));
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<ConnectionSummaryModel>>
      getConnectionSummaryDashboard({required String userId}) {
    // get api url
    final apiUrl = apis.getConnectionSummaryDashboard(userId: userId);

    // do request
    final response = service
        .get(apiUrl, null, headers: {"Content-Type": "application/json"})
        .flatMap((r) => TaskEither.fromEither(validator.validateBody(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateJson(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateMap(r)))
        .map((r) {
          return ResponseModel.fromJson(
              r,
              (json) => ConnectionSummaryModel.fromJson(
                  json as Map<String, dynamic>));
        });

    return response;
  }
}
