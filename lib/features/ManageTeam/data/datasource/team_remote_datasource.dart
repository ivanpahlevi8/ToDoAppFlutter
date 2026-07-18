import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/connection/apis.dart';
import 'package:to_do_app_flutter/core/connection/network_service.dart';
import 'package:to_do_app_flutter/core/connection/validators.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/response_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/create_team_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/models/team_model.dart';

abstract interface class TeamRemoteDatasource {
  // function to get all team
  TaskEither<BaseException, ResponseModel<List<TeamModel>>> getAllTeam({
    required String userId,
  });

  // function to create team
  TaskEither<BaseException, ResponseModel<TeamModel>> createTeam({
    required CreateTeamModel createTeamModel,
  });
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
}
