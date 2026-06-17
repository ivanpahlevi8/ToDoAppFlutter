import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/connection/base_network.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/response_model.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';

abstract interface class SearchFriendRemoteDatasource {
  // function to search user
  TaskEither<BaseException, ResponseModel<UserModel>> searchUserWithUsername({
    required String username,
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
}
