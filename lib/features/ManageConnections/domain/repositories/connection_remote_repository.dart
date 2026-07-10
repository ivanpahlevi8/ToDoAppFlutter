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

  // create function to remove connection
  TaskEither<BaseException, ConnectionViewEntity> removeConnection({
    required int connectionId,
  });

  // create function to decline connection
  TaskEither<BaseException, ConnectionViewEntity> declineConnection({
    required int connectionId,
  });

  // create function to accept connection
  TaskEither<BaseException, ConnectionViewEntity> acceptConnection({
    required int connectionId,
  });

  // create function to get all request connection reject by user
  TaskEither<BaseException, List<ConnectionViewEntity>>
  getAllRequestConnectionRejectByUser();

  // create function to get all user connection
  TaskEither<BaseException, List<ConnectionViewEntity>> getAllConnectionUser();
}
