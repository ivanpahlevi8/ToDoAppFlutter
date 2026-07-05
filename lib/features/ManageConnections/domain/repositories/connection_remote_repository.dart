import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';

abstract interface class ConnectionRemoteRepository {
  // create function to get all request connection by user
  TaskEither<BaseException, List<ConnectionViewEntity>>
  getRequestConnectionByUser();

  // create function to get all request connection to user
  TaskEither<BaseException, List<ConnectionViewEntity>>
  getRequestConnectionToUser();
}
