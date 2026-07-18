import 'package:to_do_app_flutter/core/constants/api_url.dart';

class Apis {
  late final List<String> _urlWithoutAuth;

  Apis() : _urlWithoutAuth = ['login', 'register'];

  bool requiresAuthorization(String requestUrl) =>
      !_urlWithoutAuth.any((url) => requestUrl.contains(url));

  // create local function to create uri
  Uri _buildUri(
    String endPoint, {
    Iterable<String> pathName = const [],
    Map<String, String>? queryParams,
  }) {
    return Uri(
      scheme: 'https',
      host: ApiUrl.baseUrls,
      path: [endPoint, ...pathName].join('/').replaceAll('//', '/'),
      queryParameters: (queryParams != null && queryParams.isNotEmpty)
          ? queryParams
          : null,
    );
  }

  // create login uri
  Uri getLoginUri() {
    return _buildUri(ApiUrl.logiUrl);
  }

  // create register uri
  Uri getRegisterUri() {
    return _buildUri(ApiUrl.registerUser);
  }

  // create search user by username API
  Uri getSearchUserByUsernameURI({required String username}) {
    return _buildUri(ApiUrl.getUser, queryParams: {"userName": username});
  }

  // create send user connection API
  Uri sendUserConnectionURI() {
    return _buildUri(ApiUrl.sendUserConenction);
  }

  // create function to generate URI for getting is connected
  Uri getIsConenctedURI({
    required String userId,
    required String userConnectionId,
  }) {
    return _buildUri(
      ApiUrl.getIsConnected,
      queryParams: {"userId": userId, "userConnectedId": userConnectionId},
    );
  }

  // create fucntion to create URI for get all request connection by user
  Uri getGetAllRequestConenctionByUser({required String loginUserId}) {
    return _buildUri(
      ApiUrl.getRequestConnectionByUser,
      queryParams: {"userId": loginUserId},
    );
  }

  // function to create URI for get user by id
  Uri getUserByIdUrl({required String userId}) {
    return _buildUri(ApiUrl.getUserById, queryParams: {"userId": userId});
  }

  // function to create url for get all request connection to user
  Uri getAllRequestConnectionToUser({required String loginUserId}) {
    return _buildUri(
      ApiUrl.getRequestConnectionToUser,
      queryParams: {"requesterId": loginUserId},
    );
  }

  // function to create url for remove connection
  Uri getRemoveConnectionUrl({required int connectionId}) {
    return _buildUri(
      ApiUrl.removeConnection,
      queryParams: {"connectionId": connectionId.toString()},
    );
  }

  // function to create url for declined connection
  Uri getDeclineConnectionUrl({required int connectionId}) {
    return _buildUri(
      ApiUrl.declineConnectionRequest,
      queryParams: {"connectionId": connectionId.toString()},
    );
  }

  // function to create url for accept connection
  Uri getAcceptConnectionUrl({required int connectionId}) {
    return _buildUri(
      ApiUrl.acceptConnectionRequest,
      queryParams: {"connectionId": connectionId.toString()},
    );
  }

  // function to create url to get all request connection rejected by user
  Uri getAllRequestConnectionRejectedByUser({required String userId}) {
    return _buildUri(
      ApiUrl.getConnectionRejectionToUser,
      queryParams: {"userId": userId},
    );
  }

  // function to get all connection from user
  Uri getAllConnectionUserUrl({required String userId}) {
    return _buildUri(
      ApiUrl.getAllConnectionUser,
      queryParams: {"userId": userId},
    );
  }

  // function to disconnect
  Uri getDisconnectConnectionUrl({required int connectionId}) {
    return _buildUri(
      ApiUrl.disconnectConnection,
      queryParams: {"connectionId": connectionId.toString()},
    );
  }

  // function to get all disconnect connection by other
  Uri getConnectionDisconnectByOther({required String userId}) {
    return _buildUri(
      ApiUrl.getAllConnectionDisconnectByOther,
      queryParams: {"userId": userId},
    );
  }

  // function to get all disconnect connection by user
  Uri getConnectionDisconnectByUser({required String userId}) {
    return _buildUri(
      ApiUrl.getAllConnectionDisconnectByYou,
      queryParams: {"userId": userId},
    );
  }

  /// Url for team
  Uri getAllTeamByUser({required String userId}) {
    return _buildUri(ApiUrl.getAllTeamByUser, queryParams: {"userId": userId});
  }

  Uri createTeam() {
    return _buildUri(ApiUrl.createTeamUrl);
  }

  Uri deleteTeam({required int teamId}) {
    return _buildUri(
      ApiUrl.deleteTeamUrl,
      queryParams: {"teamId": teamId.toString()},
    );
  }
}
