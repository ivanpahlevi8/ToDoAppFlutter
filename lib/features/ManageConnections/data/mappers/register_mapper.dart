import 'package:to_do_app_flutter/features/Authentication/data/models/register_field_model.dart';
import 'package:to_do_app_flutter/features/Authentication/domain/entitiy/register_field_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/data/models/connection_model.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_entity.dart';

extension ConnectionModelMapper on ConnectionModel {
  ConnectionEntity toEntity() {
    return ConnectionEntity(
      connectionId: connectionId,
      userOwnerId: userOwnerId,
      userConnectionId: userConnectionId,
      connectionStatus: connectionStatus,
      createdAt: createdAt,
    );
  }
}

extension ConnectionEntityMapper on ConnectionEntity {
  ConnectionModel toModel() {
    return ConnectionModel(
      connectionId: connectionId,
      userOwnerId: userOwnerId,
      userConnectionId: userConnectionId,
      connectionStatus: connectionStatus,
      createdAt: createdAt,
    );
  }
}
