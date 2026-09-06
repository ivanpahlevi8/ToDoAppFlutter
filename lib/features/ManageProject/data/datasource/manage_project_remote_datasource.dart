import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/connection/apis.dart';
import 'package:to_do_app_flutter/core/connection/network_service.dart';
import 'package:to_do_app_flutter/core/connection/validators.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/response_model.dart';
import 'package:to_do_app_flutter/features/ManageProject/data/models/create_project_model.dart';
import 'package:to_do_app_flutter/features/ManageProject/data/models/project_model.dart';
import 'package:to_do_app_flutter/features/ManageProject/data/models/to_do_model.dart';

abstract interface class ManageProjectRemoteDatasource {
  TaskEither<BaseException, ResponseModel<List<ProjectModel>>>
      getAllProjectByTeam({required int teamId});

  // function to create project within team
  TaskEither<BaseException, ResponseModel<String>> createProjectWithinTeam(
      {required CreateProjectModel createProject});

  // function to remove project
  TaskEither<BaseException, ResponseModel<String>> deleteProject(
      {required int projectId});

  // function to get project detail
  TaskEither<BaseException, ResponseModel<ProjectModel>> getProjectDetail(
      {required int projectId});

  // function to get all todo within project
  TaskEither<BaseException, ResponseModel<List<ToDoModel>>> getAllToDoProject(
      {required int projectId});

  // fucntion to delete todo
  TaskEither<BaseException, ResponseModel<String>> deleteToDoProject(
      {required int toDoId});
}

class ManageProjectRemoteDatasourceImpl
    implements ManageProjectRemoteDatasource {
  final INetworkService service;
  final INetworkValidator validator;
  final Apis apis;

  ManageProjectRemoteDatasourceImpl(
      {required this.service, required this.validator, required this.apis});

  @override
  TaskEither<BaseException, ResponseModel<List<ProjectModel>>>
      getAllProjectByTeam({required int teamId}) {
    // get api url
    final getApiUrl = apis.getAllProjectByTeam(teamId: teamId);

    // do request
    final response = service
        .get(getApiUrl, null, headers: {"Content-Type": "application/json"})
        .flatMap((body_response) =>
            TaskEither.fromEither(validator.validateBody(body_response)))
        .flatMap((r) => TaskEither.fromEither(validator.validateJson(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateMap(r)))
        .map((data) {
          return ResponseModel.fromJson(data, (innerData) {
            return (innerData as List<dynamic>).map((item) {
              return ProjectModel.fromJson(item);
            }).toList();
          });
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<String>> createProjectWithinTeam(
      {required CreateProjectModel createProject}) {
    // get api
    final getApi = apis.createProjectWithinTeam();

    // do request
    final response = service
        .post(getApi, null,
            headers: {"Content-Type": "application/json"},
            body: createProject.toJson())
        .flatMap((body) => TaskEither.fromEither(validator.validateBody(body)))
        .flatMap((json) => TaskEither.fromEither(validator.validateJson(json)))
        .flatMap(
            (mapped) => TaskEither.fromEither(validator.validateMap(mapped)))
        .map((data) {
      return ResponseModel.fromJson(data, (json) {
        return json as String;
      });
    });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<String>> deleteProject(
      {required int projectId}) {
    // get api
    final getApiUrl = apis.deleteProject(projectId: projectId);

    // do request
    final response = service
        .delete(getApiUrl, null, headers: {"Content-Type": "application/json"})
        .flatMap((response) =>
            TaskEither.fromEither(validator.validateBody(response)))
        .flatMap((response) =>
            TaskEither.fromEither(validator.validateJson(response)))
        .flatMap((response) =>
            TaskEither.fromEither(validator.validateMap(response)))
        .map((data) {
          return ResponseModel.fromJson(data, (json) => json as String);
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<ProjectModel>> getProjectDetail(
      {required int projectId}) {
    // get api url
    final getApiUrl = apis.detailProject(projectId: projectId);

    // do request
    final response = service
        .get(getApiUrl, null, headers: {"Content-Type": "application/json"})
        .flatMap((r) => TaskEither.fromEither(validator.validateBody(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateJson(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateMap(r)))
        .map((r) {
          return ResponseModel.fromJson(
              r, (json) => ProjectModel.fromJson(json as dynamic));
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<List<ToDoModel>>> getAllToDoProject(
      {required int projectId}) {
    // get api url
    final getApiUrl = apis.getToDoProject(projectId: projectId);

    // do request
    final response = service
        .get(getApiUrl, null, headers: {"Content-Type": "application/json"})
        .flatMap((r) => TaskEither.fromEither(validator.validateBody(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateJson(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateMap(r)))
        .map((r) {
          return ResponseModel.fromJson(r, (json) {
            return (json as List<dynamic>).map((e) {
              return ToDoModel.fromJson(e);
            }).toList();
          });
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<String>> deleteToDoProject(
      {required int toDoId}) {
    // create url
    final apiUrl = apis.deleteToDoProject(toDoId: toDoId);

    // do request
    final response = service
        .delete(apiUrl, null, headers: {"Content-Type": "application/json"})
        .flatMap((r) => TaskEither.fromEither(validator.validateBody(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateJson(r)))
        .flatMap((r) => TaskEither.fromEither(validator.validateMap(r)))
        .map((data) {
          return ResponseModel.fromJson(data, (json) => json as String);
        });

    return response;
  }
}
