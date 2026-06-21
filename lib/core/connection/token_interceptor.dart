import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app_flutter/core/connection/apis.dart';

class TokenInterceptor extends Interceptor {
  final Apis _apis;
  final SharedPreferences _prefs;

  TokenInterceptor(this._apis, this._prefs);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    /**
     * This will be updated later when the backend already implement the
     * bearer token
     */

    // if (_apis.requiresAuthorization(options.uri.path)) {
    //   final token = _prefs.getString(ConstantValue.bearerKey);

    //   if (token == null) {
    //     return handler.reject(
    //       DioException(
    //         requestOptions: options,
    //         type: DioExceptionType.badResponse,
    //         stackTrace: StackTrace.current,
    //         message: 'Token not found',
    //         response: Response(
    //           requestOptions: options,
    //           statusCode: HttpStatus.unauthorized,
    //           statusMessage: 'Token not found',
    //         ),
    //       ),
    //     );
    //   }

    //   options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    // }
    return super.onRequest(options, handler);
  }
}
