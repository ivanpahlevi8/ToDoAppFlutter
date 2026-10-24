import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/connection_user_item_summary_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_entity.dart';

part 'connection_summary_entity.freezed.dart';

@freezed
class ConnectionSummaryEntity with _$ConnectionSummaryEntity {
  factory ConnectionSummaryEntity({
    required int numberOfRequestedConnection,
    required int numberOfRequestConnection,
    required int numberConnectionStatusUseFollow,
    required int numberConnectionStatusUserFollowed,
    required int numberConnectionStatusConnect,
    required int numberConnectionStatusUserReject,
    required int numberConnectionStatusUserRejected,
    required int numberConnectionStatusDisconnect,
    required List<ConnectionEntity> topThreeConnection,
    required List<ConnectionUserItemSummaryEntity> userReference,
  }) = _ConnectionSummaryEntity;
}
