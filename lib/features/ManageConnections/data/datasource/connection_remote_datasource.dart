import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/connection/base_network.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/response_model.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/ManageConnections/data/models/connection_model.dart';

abstract interface class ConnectionRemoteDatasource {
  // create function to get all reques connection made by login user
  TaskEither<BaseException, ResponseModel<List<ConnectionModel>>>
  getAllConnectionRequestByUser({required String loginUserId});

  // create function to search user by user id
  TaskEither<BaseException, ResponseModel<UserModel>> getUserById({
    required String userId,
  });
}

class ConnectionRemoteDatasourceImpl extends BaseNetwork
    implements ConnectionRemoteDatasource {
  ConnectionRemoteDatasourceImpl({
    required super.service,
    required super.validator,
    required super.apis,
  });

  @override
  TaskEither<BaseException, ResponseModel<List<ConnectionModel>>>
  getAllConnectionRequestByUser({required String loginUserId}) {
    // create api uri
    final apiUrl = apis.getGetAllRequestConenctionByUser(
      loginUserId: loginUserId,
    );

    print("Check on url on get connection : $apiUrl");

    // do request
    final response = service
        .get(apiUrl, null)
        // validate response body
        .flatMap(
          (raw_response) =>
              TaskEither.fromEither(validator.validateBody(raw_response)),
        )
        // validate response as a json
        .flatMap((body) => TaskEither.fromEither(validator.validateJson(body)))
        // validate response as a map object of dart
        .flatMap((json) => TaskEither.fromEither(validator.validateMap(json)))
        // parse map into object
        .map(
          (map_data) => ResponseModel.fromJson(
            map_data,
            (object_result) => (object_result as List<dynamic>)
                .map((object) => ConnectionModel.fromJson(object))
                .toList(),
          ),
        );

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<UserModel>> getUserById({
    required String userId,
  }) {
    // get api
    final getApi = apis.getUserByIdUrl(userId: userId);

    print("Check on url on get userb by id : $getApi");

    // do request
    final response = service
        .get(getApi, null)
        // validate the body response
        .flatMap(
          (raw_body) => TaskEither.fromEither(validator.validateBody(raw_body)),
        )
        // validate the json response
        .flatMap((body) => TaskEither.fromEither(validator.validateJson(body)))
        // validate the map object to flutter
        .flatMap((json) => TaskEither.fromEither(validator.validateMap(json)))
        // map to response model of user
        .map((responseData) {
          return ResponseModel.fromJson(
            responseData,
            (objectJson) =>
                UserModel.fromJson(objectJson as Map<String, dynamic>),
          );
        });

    return response;
  }
}
