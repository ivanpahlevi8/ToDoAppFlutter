import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_entity.dart';
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
}
