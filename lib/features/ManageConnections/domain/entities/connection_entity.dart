import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_entity.freezed.dart';

@freezed
class ConnectionEntity with _$ConnectionEntity {
  factory ConnectionEntity({
    required int connectionId,
    required String userOwnerId,
    required String userConnectionId,
    required String connectionStatus,
    required String createdAt,
  }) = _ConnectionEntity;
}
