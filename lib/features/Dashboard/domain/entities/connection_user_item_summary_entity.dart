import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_entity.dart';

part 'connection_user_item_summary_entity.freezed.dart';

@freezed
class ConnectionUserItemSummaryEntity with _$ConnectionUserItemSummaryEntity {
  factory ConnectionUserItemSummaryEntity({
    required ConnectionEntity connectionEntity,
    required UserModel user,
  }) = _ConnectionUserItemSummaryEntity;
}
