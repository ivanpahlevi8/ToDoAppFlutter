import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/connection/apis.dart';
import 'package:to_do_app_flutter/core/connection/network_service.dart';
import 'package:to_do_app_flutter/core/connection/validators.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/response_model.dart';
import 'package:to_do_app_flutter/features/ManageConnections/data/models/connection_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/assign_user_response_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/create_team_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/role_team_input_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/team_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/team_role_model.dart';

abstract interface class TeamRemoteDatasource {
  // function to get all team
  TaskEither<BaseException, ResponseModel<List<TeamModel>>> getAllTeam({
    required String userId,
  });

  // function to create team
  TaskEither<BaseException, ResponseModel<TeamModel>> createTeam({
    required CreateTeamModel createTeamModel,
  });

  // function to delete team
  TaskEither<BaseException, ResponseModel<String>> deleteTeam({
    required int teamId,
  });

  // function to unassign user from team
  TaskEither<BaseException, ResponseModel<String>> unAssignUserFromTeam({
    required String userId,
    required int teamId,
  });

  // function to get team detail
  TaskEither<BaseException, ResponseModel<TeamModel>> getTeamDetail({
    required int teamId,
  });

  // function
  TaskEither<BaseException, ResponseModel<TeamRoleModel>> createRoleTeam({
    required RoleTeamInputModel roleTeamInput,
  });

  // function to delete team role
  TaskEither<BaseException, ResponseModel<String>> deleteRoleTeam({
    required int roleTeamId,
  });

  // function to search connection user
  TaskEither<BaseException, ResponseModel<List<ConnectionModel>>>
  searchConnectionUser({required String name, required String loginUserId});

  // function to assign user to to team
  TaskEither<BaseException, ResponseModel<AssignUserResponseModel>>
  assignUserToTeam({
    required String userId,
    required int teamId,
    required int teamRoleId,
  });

  // function to get all team roles within team
  TaskEither<BaseException, ResponseModel<List<TeamRoleModel>>>
  getAllTeamRoles({required int teamId});
}

class TeamRemoteDatasourceImpl implements TeamRemoteDatasource {
  final NetworkService service;
  final NetworkValidator validator;
  final Apis apis;

  TeamRemoteDatasourceImpl({
    required this.service,
    required this.validator,
    required this.apis,
  });

  @override
  TaskEither<BaseException, ResponseModel<List<TeamModel>>> getAllTeam({
    required String userId,
  }) {
    // get api
    final apiUrl = apis.getAllTeamByUser(userId: userId);

    // do request
    final response = service
        .get(apiUrl, null, headers: {"Content-Type": "application/json"})
        .flatMap(
          (body_response) =>
              TaskEither.fromEither(validator.validateBody(body_response)),
        )
        .flatMap((json) => TaskEither.fromEither(validator.validateJson(json)))
        .flatMap(
          (mapped) => TaskEither.fromEither(validator.validateMap(mapped)),
        )
        .map((obj_data) {
          return ResponseModel.fromJson(obj_data, (innerData) {
            return (innerData as List<dynamic>).map((single_data) {
              return TeamModel.fromJson(single_data);
            }).toList();
          });
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<TeamModel>> createTeam({
    required CreateTeamModel createTeamModel,
  }) {
    // get api
    final getUri = apis.createTeam();

    final response = service
        .post(
          getUri,
          null,
          headers: {"Content-Type": "application/json"},
          body: createTeamModel.toJson(),
        )
        // validate body response as 200 response
        .flatMap(
          (body_response) =>
              TaskEither.fromEither(validator.validateBody(body_response)),
        )
        // validate json response
        .flatMap((json) => TaskEither.fromEither(validator.validateJson(json)))
        // validate map
        .flatMap(
          (mapped) => TaskEither.fromEither(validator.validateMap(mapped)),
        )
        .map((data) {
          return ResponseModel.fromJson(data, (innerData) {
            return TeamModel.fromJson(innerData as dynamic);
          });
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<String>> deleteTeam({
    required int teamId,
  }) {
    // get api
    final getUri = apis.deleteTeam(teamId: teamId);

    final response = service
        .delete(getUri, null, headers: {"Content-Type": "application/json"})
        .flatMap(
          (body_response) =>
              TaskEither.fromEither(validator.validateBody(body_response)),
        )
        .flatMap((json) => TaskEither.fromEither(validator.validateJson(json)))
        .flatMap(
          (mapped) => TaskEither.fromEither(validator.validateMap(mapped)),
        )
        .map((data) {
          return ResponseModel.fromJson(data, (innerData) {
            return innerData as String;
          });
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<String>> unAssignUserFromTeam({
    required String userId,
    required int teamId,
  }) {
    // get api url
    final apiUrl = apis.unAssignUserFromTeam(userId: userId, teamId: teamId);

    final response = service
        .post(apiUrl, null, headers: {"Content-Type": "application/json"})
        .flatMap(
          (body_response) =>
              TaskEither.fromEither(validator.validateBody(body_response)),
        )
        .flatMap((json) => TaskEither.fromEither(validator.validateJson(json)))
        .flatMap(
          (mapped) => TaskEither.fromEither(validator.validateMap(mapped)),
        )
        .map((data) {
          return ResponseModel.fromJson(data, (innerdata) {
            return innerdata as String;
          });
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<TeamModel>> getTeamDetail({
    required int teamId,
  }) {
    // get api url
    final ApiUrl = apis.getTeamDetail(teamId: teamId);

    // do request
    final response = service
        .get(ApiUrl, null, headers: {"Content-Type": "application/json"})
        .flatMap(
          (body_response) =>
              TaskEither.fromEither(validator.validateBody(body_response)),
        )
        .flatMap((json) => TaskEither.fromEither(validator.validateJson(json)))
        .flatMap(
          (mapped) => TaskEither.fromEither(validator.validateMap(mapped)),
        )
        .map((data) {
          return ResponseModel.fromJson(data, (data) {
            return TeamModel.fromJson(data as dynamic);
          });
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<TeamRoleModel>> createRoleTeam({
    required RoleTeamInputModel roleTeamInput,
  }) {
    // get api url
    final getApiUrl = apis.createTeamRole();

    // do request
    final response = service
        .post(
          getApiUrl,
          null,
          headers: {"Content-Type": "application/json"},
          body: roleTeamInput.toJson(),
        )
        .flatMap(
          (body_response) =>
              TaskEither.fromEither(validator.validateBody(body_response)),
        )
        .flatMap((json) => TaskEither.fromEither(validator.validateJson(json)))
        .flatMap(
          (mapped) => TaskEither.fromEither(validator.validateMap(mapped)),
        )
        .map((data) {
          return ResponseModel.fromJson(data, (innerData) {
            return TeamRoleModel.fromJson(innerData as dynamic);
          });
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<String>> deleteRoleTeam({
    required int roleTeamId,
  }) {
    // get uri
    final getUri = apis.deleteTeamRole(teamRoleId: roleTeamId);

    // do request
    final response = service
        .delete(getUri, null, headers: {"Content-Type": "application/json"})
        .flatMap(
          (body_response) =>
              TaskEither.fromEither(validator.validateBody(body_response)),
        )
        .flatMap(
          ((json) => TaskEither.fromEither(validator.validateJson(json))),
        )
        .flatMap(
          (mapped) => TaskEither.fromEither(validator.validateMap(mapped)),
        )
        .map((data) {
          return ResponseModel.fromJson(data, (innerData) {
            return innerData as String;
          });
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<List<ConnectionModel>>>
  searchConnectionUser({required String name, required String loginUserId}) {
    // create api
    final getApi = apis.searchConnectionUser(
      name: name,
      loginUserId: loginUserId,
    );

    // do request
    final response = service
        .get(getApi, null, headers: {"Content-Type": "application/json"})
        .flatMap(
          (body_response) =>
              TaskEither.fromEither(validator.validateBody(body_response)),
        )
        .flatMap((json) => TaskEither.fromEither(validator.validateJson(json)))
        .flatMap(
          (mapped) => TaskEither.fromEither(validator.validateMap(mapped)),
        )
        .map((data) {
          return ResponseModel.fromJson(data, (innerData) {
            return (innerData as List<dynamic>).map((item) {
              return ConnectionModel.fromJson(item);
            }).toList();
          });
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<AssignUserResponseModel>>
  assignUserToTeam({
    required String userId,
    required int teamId,
    required int teamRoleId,
  }) {
    // create api
    final apiUrl = apis.assignUserToTeam(
      userId: userId,
      teamId: teamId,
      teamRoleId: teamRoleId,
    );

    // do request
    final response = service
        .post(apiUrl, null, headers: {"Content-Type": "application/json"})
        .flatMap(
          (body_response) =>
              TaskEither.fromEither(validator.validateBody(body_response)),
        )
        .flatMap((json) => TaskEither.fromEither(validator.validateJson(json)))
        .flatMap(
          (mapped) => TaskEither.fromEither(validator.validateMap(mapped)),
        )
        .map((data) {
          return ResponseModel.fromJson(data, (innerUser) {
            return AssignUserResponseModel.fromJson(innerUser as dynamic);
          });
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<List<TeamRoleModel>>>
  getAllTeamRoles({required int teamId}) {
    // get api url
    final apiUrl = apis.getTeamRoles(teamId: teamId);

    // do request
    final response = service
        .get(apiUrl, null, headers: {"Content-Type": "application/json"})
        .flatMap(
          (body_response) =>
              TaskEither.fromEither(validator.validateBody(body_response)),
        )
        .flatMap((json) => TaskEither.fromEither(validator.validateJson(json)))
        .flatMap(
          (mapped) => TaskEither.fromEither(validator.validateMap(mapped)),
        )
        .map((data) {
          return ResponseModel.fromJson(data, (innerData) {
            return (innerData as List<dynamic>).map((dataList) {
              return TeamRoleModel.fromJson(dataList);
            }).toList();
          });
        });

    return response;
  }
}
