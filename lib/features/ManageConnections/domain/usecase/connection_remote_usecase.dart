import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/repositories/connection_remote_repository.dart';

class ConnectionRemoteUsecase {
  final ConnectionRemoteRepository connectionRemoteRepository;

  ConnectionRemoteUsecase({required this.connectionRemoteRepository});

  // create function to get all connection request from login user
  TaskEither<BaseException, List<ConnectionViewEntity>>
  getRequestConnectionByUser() {
    return connectionRemoteRepository.getRequestConnectionByUser();
  }

  // create function to get all connection request to login user
  TaskEither<BaseException, List<ConnectionViewEntity>>
  getRequestConnectionToUser() {
    return connectionRemoteRepository.getRequestConnectionToUser();
  }

  // create fucntion to remove connection
  TaskEither<BaseException, ConnectionViewEntity> removeConnection({
    required int connectionId,
  }) {
    return connectionRemoteRepository.removeConnection(
      connectionId: connectionId,
    );
  }

  // create function to decline connection
  TaskEither<BaseException, ConnectionViewEntity> declineConnection({
    required int connectionId,
  }) {
    return connectionRemoteRepository.declineConnection(
      connectionId: connectionId,
    );
  }

  // create function to accept connection
  TaskEither<BaseException, ConnectionViewEntity> acceptConnection({
    required int connectionId,
  }) {
    return connectionRemoteRepository.acceptConnection(
      connectionId: connectionId,
    );
  }
}
