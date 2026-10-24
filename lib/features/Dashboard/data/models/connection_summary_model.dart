import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/features/ManageConnections/data/models/connection_model.dart';

part 'connection_summary_model.freezed.dart';
part 'connection_summary_model.g.dart';

@freezed
class ConnectionSummaryModel with _$ConnectionSummaryModel {
  factory ConnectionSummaryModel({
    @JsonKey(name: "numberOfRequestedConnection")
    required int numberOfRequestedConnection,
    @JsonKey(name: "numberOfRequestConnection")
    required int numberOfRequestConnection,
    @JsonKey(name: "numberConnectionStatusUserFollow")
    required int numberConnectionStatusUseFollow,
    @JsonKey(name: "numberConnectionStatusUserFollowed")
    required int numberConnectionStatusUserFollowed,
    @JsonKey(name: "numberConnectionStatusConnect")
    required int numberConnectionStatusConnect,
    @JsonKey(name: "numberConnectionStatusUserReject")
    required int numberConnectionStatusUserReject,
    @JsonKey(name: "numberConnectionStatusUserRejected")
    required int numberConnectionStatusUserRejected,
    @JsonKey(name: "numberConnectionStatusDisconnect")
    required int numberConnectionStatusDisconnect,
    @JsonKey(name: "topThreeConnection")
    required List<ConnectionModel> topThreeConnection,
  }) = _ConnectionSummaryModel;

  factory ConnectionSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectionSummaryModelFromJson(json);
}
