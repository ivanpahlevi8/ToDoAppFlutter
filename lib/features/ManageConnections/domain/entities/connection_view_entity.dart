import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_entity.dart';

part 'connection_view_entity.freezed.dart';

@freezed
class ConnectionViewEntity with _$ConnectionViewEntity {
  factory ConnectionViewEntity({
    required ConnectionEntity connectionEntity,
    required UserModel userModel,
  }) = _ConnectionViewEntity;
}
