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

  // function to get all connection request to user
  TaskEither<BaseException, ResponseModel<List<ConnectionModel>>>
  getAllConnectionToUser({required String loginUserId});

  // function to remove connection
  TaskEither<BaseException, ResponseModel<ConnectionModel>> removeConnection({
    required int connectionId,
  });

  // function to decline connection request
  TaskEither<BaseException, ResponseModel<ConnectionModel>> declineConnection({
    required int connectionId,
  });

  // function to accept connection request
  TaskEither<BaseException, ResponseModel<ConnectionModel>> acceptConnection({
    required int connectionId,
  });

  // function to get request connection rejected by user
  TaskEither<BaseException, ResponseModel<List<ConnectionModel>>>
  getRequestConnectionRejectByUser({required String userId});

  // function to get all connection user
  TaskEither<BaseException, ResponseModel<List<ConnectionModel>>>
  getAllConnectionUser({required String userId});

  // fucntion to disconnect connection
  TaskEither<BaseException, ResponseModel<ConnectionModel>>
  disconnectConnection({required int connectionId});
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

  @override
  TaskEither<BaseException, ResponseModel<List<ConnectionModel>>>
  getAllConnectionToUser({required String loginUserId}) {
    // create api url
    final apiUrl = apis.getAllRequestConnectionToUser(loginUserId: loginUserId);

    // do request
    final response = service
        .get(apiUrl, null)
        // validate status response
        .flatMap(
          (body_response) =>
              TaskEither.fromEither(validator.validateBody(body_response)),
        )
        // validate json response, to check weather the response is json or not
        .flatMap((json) => TaskEither.fromEither(validator.validateJson(json)))
        // validate response to check weather is can be map as a flutter object or not
        .flatMap(
          (mapped) => TaskEither.fromEither(validator.validateMap(mapped)),
        )
        // map to object
        .map((dataResponse) {
          return ResponseModel.fromJson(
            dataResponse,
            (innerData) => (innerData as List<dynamic>).map((data) {
              return ConnectionModel.fromJson(data);
            }).toList(),
          );
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<ConnectionModel>> removeConnection({
    required int connectionId,
  }) {
    // create api
    final apiUrl = apis.getRemoveConnectionUrl(connectionId: connectionId);

    // do request
    final response = service
        .delete(apiUrl, null, headers: {"Content-Type": "application/json"})
        // validate the response to make sure it 200
        .flatMap(
          (response_body) =>
              TaskEither.fromEither(validator.validateBody(response_body)),
        )
        // validate body to make sure the body response was json
        .flatMap((body) => TaskEither.fromEither(validator.validateJson(body)))
        // validate body to make sure the body can be mapped into an object
        .flatMap((json) => TaskEither.fromEither(validator.validateMap(json)))
        // map into a real object
        .map((data) {
          return ResponseModel.fromJson(
            data,
            (innerData) => ConnectionModel.fromJson(innerData as dynamic),
          );
        });

    // return response
    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<ConnectionModel>> declineConnection({
    required int connectionId,
  }) {
    // create api
    final apiUrl = apis.getDeclineConnectionUrl(connectionId: connectionId);

    // do request
    final response = service
        .update(apiUrl, null, headers: {"Content-Type": "application/json"})
        // validate the response to make sure it 200
        .flatMap(
          (response_body) =>
              TaskEither.fromEither(validator.validateBody(response_body)),
        )
        // validate body to make sure the body response was json
        .flatMap((body) => TaskEither.fromEither(validator.validateJson(body)))
        // validate body to make sure the body can be mapped into an object
        .flatMap((json) => TaskEither.fromEither(validator.validateMap(json)))
        // map into a real object
        .map((data_obj) {
          return ResponseModel.fromJson(
            data_obj,
            (innerObj) => ConnectionModel.fromJson(innerObj as dynamic),
          );
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<ConnectionModel>> acceptConnection({
    required int connectionId,
  }) {
    // create api url
    final apiUrl = apis.getAcceptConnectionUrl(connectionId: connectionId);

    // do request
    final response = service
        .update(apiUrl, null, headers: {"Content-Type": "application/json"})
        // validate the body response, to make sure it return 200
        .flatMap(
          (body_response) =>
              TaskEither.fromEither(validator.validateBody(body_response)),
        )
        // validate to make sure the response is in json
        .flatMap((json) => TaskEither.fromEither(validator.validateJson(json)))
        // validate to make sure json can be mapped to body
        .flatMap(
          (mapped) => TaskEither.fromEither(validator.validateMap(mapped)),
        )
        // map to result
        .map((result) {
          return ResponseModel.fromJson(
            result,
            (innerObj) => ConnectionModel.fromJson(innerObj as dynamic),
          );
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<List<ConnectionModel>>>
  getRequestConnectionRejectByUser({required String userId}) {
    // get api
    final getApi = apis.getAllRequestConnectionRejectedByUser(userId: userId);

    // do request
    final response = service
        .get(getApi, null, headers: {"Content-Type": "application/json"})
        // validate response to make sure that the response is 200
        .flatMap((body) => TaskEither.fromEither(validator.validateBody(body)))
        // validate is the response is a json or not
        .flatMap((json) => TaskEither.fromEither(validator.validateJson(json)))
        // validate is the response can be mapped as an object of flutter
        .flatMap(
          (mapped) => TaskEither.fromEither(validator.validateMap(mapped)),
        )
        // mapped to real object
        .map((dataResult) {
          return ResponseModel.fromJson(dataResult, (innerJson) {
            return (innerJson as List<dynamic>).map((item) {
              return ConnectionModel.fromJson(item);
            }).toList();
          });
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<List<ConnectionModel>>>
  getAllConnectionUser({required String userId}) {
    // get api url
    final apiUrl = apis.getAllConnectionUserUrl(userId: userId);

    // do request
    final response = service
        .get(apiUrl, null, headers: {"Content-Type": "application/json"})
        // validate the response body
        .flatMap(
          (body_response) =>
              TaskEither.fromEither(validator.validateBody(body_response)),
        )
        // validate response as a json
        .flatMap((json) => TaskEither.fromEither(validator.validateJson(json)))
        // validate response as a mapped flutter object
        .flatMap(
          (mapped) => TaskEither.fromEither(validator.validateMap(mapped)),
        )
        // map into object data
        .map((data) {
          return ResponseModel.fromJson(data, (innerData) {
            return (innerData as List<dynamic>).map((singleData) {
              return ConnectionModel.fromJson(singleData);
            }).toList();
          });
        });

    return response;
  }

  @override
  TaskEither<BaseException, ResponseModel<ConnectionModel>>
  disconnectConnection({required int connectionId}) {
    // get api url
    final apiUrl = apis.getDisconnectConnectionUrl(connectionId: connectionId);

    // do request
    final response = service
        .update(apiUrl, null, headers: {"Content-Type": "application/json"})
        // validate the body response
        .flatMap(
          (body_response) =>
              TaskEither.fromEither(validator.validateBody(body_response)),
        )
        // validate the response ia a json
        .flatMap((json) => TaskEither.fromEither(validator.validateJson(json)))
        // validate the json can be mapped
        .flatMap(
          (mapped) => TaskEither.fromEither(validator.validateMap(mapped)),
        )
        // get the object
        .map((data) {
          return ResponseModel.fromJson(data, (innerData) {
            return ConnectionModel.fromJson(innerData as dynamic);
          });
        });

    return response;
  }
}
