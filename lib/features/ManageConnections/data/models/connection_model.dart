import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_model.freezed.dart';
part 'connection_model.g.dart';

@freezed
class ConnectionModel with _$ConnectionModel {
  factory ConnectionModel({
    @JsonKey(name: "connectionId") required int connectionId,
    @JsonKey(name: "userOwnerId") required String userOwnerId,
    @JsonKey(name: "userConnectionId") required String userConnectionId,
    @JsonKey(name: "connectionStatus") required String connectionStatus,
    @JsonKey(name: "createdAt") required String createdAt,
  }) = _ConnectionModel;

  factory ConnectionModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectionModelFromJson(json);
}
