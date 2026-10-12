import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/connection/apis.dart';
import 'package:to_do_app_flutter/core/connection/network_service.dart';
import 'package:to_do_app_flutter/core/connection/validators.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/response_model.dart';
import 'package:to_do_app_flutter/features/Dashboard/data/models/project_summary_model.dart';

abstract interface class DashboardRemoteDatasource {
  // function to get project dashboard summary
  TaskEither<BaseException, ResponseModel<ProjectSummaryModel>>
      getProjectSummaryDashboard({required String userId});
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
}
