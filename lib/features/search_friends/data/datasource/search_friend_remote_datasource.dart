import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/connection/base_network.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/response_model.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/search_friends/data/model/send_user_connection_field_model.dart';

abstract interface class SearchFriendRemoteDatasource {
  // function to search user
  TaskEither<BaseException, ResponseModel<UserModel>> searchUserWithUsername({
    required String username,
  });

  // function to send connection to user
  TaskEither<BaseException, ResponseModel<String>> sendUserConnection({
    required SendUserConnectionFieldModel sendUserConnection,
  });

  // create fucntion to get is connected user
  TaskEither<BaseException, ResponseModel<bool>> getIsConnected({
    required String userId,
    required String userConnectedId,
  });
}

class SearchfriendRemoteDatasourceImpl extends BaseNetwork
    implements SearchFriendRemoteDatasource {
  SearchfriendRemoteDatasourceImpl({
    required super.service,
    required super.validator,
    required super.apis,
  });

  @override
  TaskEither<BaseException, ResponseModel<UserModel>> searchUserWithUsername({
    required String username,
  }) {
    // create api
    final apiUrl = apis.getSearchUserByUsernameURI(username: username);

    // do request
    final response = service
        .get(apiUrl, null)
        // Ensure the status code is 200-299
        .flatMap(
          (response) => TaskEither.fromEither(validator.validateBody(response)),
        )
        // Ensure the raw body is actually JSON
        .flatMap((body) => TaskEither.fromEither(validator.validateJson(body)))
        // Ensure it matches your API's map structure (e.g., { "data": { ... } })
        .flatMap((json) => TaskEither.fromEither(validator.validateMap(json)))
        // Finally, map the validated JSON into your Dart Model!
        .map(
          (validData) => ResponseModel<UserModel>.fromJson(
            validData,
            (json) => UserModel.fromJson(json as Map<String, dynamic>),
          ),
        );

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<String>> sendUserConnection({
    required SendUserConnectionFieldModel sendUserConnection,
  }) {
    // create API
    final apiUrls = apis.sendUserConnectionURI();

    // do request
    final response = service
        .post(
          apiUrls,
          null,
          headers: {"Content-Type": "application/json"},
          body: sendUserConnection.toJson(),
        )
        .flatMap(
          (response) => TaskEither.fromEither(validator.validateBody(response)),
        ) // validate body response
        .flatMap(
          (response) => TaskEither.fromEither(validator.validateJson(response)),
        ) // validate the json response, is it a valid json
        .flatMap(
          (response) => TaskEither.fromEither(validator.validateMap(response)),
        ) // validate the json is a map
        .map((data) => ResponseModel.fromJson(data, (json) => json as String));

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<bool>> getIsConnected({
    required String userId,
    required String userConnectedId,
  }) {
    // create api url
    final apiUrls = apis.getIsConenctedURI(
      userId: userId,
      userConnectionId: userConnectedId,
    );

    // do request
    final response = service
        .get(apiUrls, null)
        // validate the body response, make sure it 200
        .flatMap(
          (raw_response) =>
              TaskEither.fromEither(validator.validateBody(raw_response)),
        )
        // validate the json, make sure the response is json not the html format
        .flatMap(
          (clean_body) =>
              TaskEither.fromEither(validator.validateJson(clean_body)),
        )
        // validate the map, make sure the json is a valid map object of the flutter
        .flatMap((json) => TaskEither.fromEither(validator.validateMap(json)))
        // return clean data, data from response as a boolean
        .map(
          (response) =>
              ResponseModel.fromJson(response, (data) => data as bool),
        );

    return response;
  }
}
