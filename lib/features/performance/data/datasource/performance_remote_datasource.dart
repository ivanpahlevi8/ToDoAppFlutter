import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/connection/apis.dart';
import 'package:to_do_app_flutter/core/connection/network_service.dart';
import 'package:to_do_app_flutter/core/connection/validators.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/response_model.dart';
import 'package:to_do_app_flutter/features/performance/data/models/project_performance_model.dart';
import 'package:to_do_app_flutter/features/performance/data/models/team_performance_model.dart';
import 'package:to_do_app_flutter/features/performance/data/models/todo_performance_model.dart';

abstract interface class PerformanceRemoteDatasource {
  // function to get to do performance
  TaskEither<BaseException, ResponseModel> getToDoPerformance(
      {required String userId});

  // function to get project performance
  TaskEither<BaseException, ResponseModel> getProjectPerformance(
      {required String userId});

  // function to get team performance
  TaskEither<BaseException, ResponseModel> getTeamPerformance(
      {required String userId});
}

class PerformanceRemoteDatasourceImpl implements PerformanceRemoteDatasource {
  final NetworkService service;
  final NetworkValidator validator;
  final Apis apis;

  const PerformanceRemoteDatasourceImpl({
    required this.service,
    required this.validator,
    required this.apis,
  });

  @override
  TaskEither<BaseException, ResponseModel> getToDoPerformance(
      {required String userId}) {
    // get api url
    final apiUrl = apis.getToDoPerformance(userId: userId);

    // do request
    final response = service
        .get(apiUrl, null, headers: {"Content-Type": "application/json"})
        .flatMap((r) => TaskEither.fromEither(validator.validateBody(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateJson(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateMap(r)))
        .map((jsonData) {
          return ResponseModel.fromJson(
              jsonData,
              (json) =>
                  ToDoPerformanceModel.fromJson(json as Map<String, dynamic>));
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel> getProjectPerformance(
      {required String userId}) {
    // create api
    final apiUrl = apis.getProjectPerformance(userId: userId);

    // do request
    final response = service
        .get(apiUrl, null, headers: {"Content-Type": "application/json"})
        .flatMap((r) => TaskEither.fromEither(validator.validateBody(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateJson(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateMap(r)))
        .map((data) {
          return ResponseModel.fromJson(
              data,
              (json) => ProjectPerformanceModel.fromJson(
                  json as Map<String, dynamic>));
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel> getTeamPerformance(
      {required String userId}) {
    // get api url
    final apiUrl = apis.getTeamPerformance(userId: userId);

    // do request
    final response = service
        .get(apiUrl, null, headers: {"Content-Type": "application/json"})
        .flatMap((r) => TaskEither.fromEither(validator.validateBody(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateJson(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateMap(r)))
        .map((data) {
          return ResponseModel.fromJson(
              data,
              (json) =>
                  TeamPerformanceModel.fromJson(json as Map<String, dynamic>));
        });

    return response;
  }
}

/**
 * NOTE :
 * Handle cancel token later, when request being cancelled
 * it will helps the exception of future already finished when user click back
 * while request is on going
 */
