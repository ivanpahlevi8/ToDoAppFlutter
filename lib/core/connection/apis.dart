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
}
