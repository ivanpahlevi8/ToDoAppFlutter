import 'package:dio/dio.dart';
import 'package:to_do_app_flutter/core/connection/apis.dart';
import 'package:to_do_app_flutter/core/connection/network_service.dart';
import 'package:to_do_app_flutter/core/connection/validators.dart';

class BaseNetwork {
  BaseNetwork({
    required this.service,
    required this.validator,
    required this.apis,
  });

  final INetworkService<Response> service;
  final INetworkValidator<Response, Object> validator;
  final Apis apis;
}
