import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_performance_model.freezed.dart';
part 'connection_performance_model.g.dart';

@freezed
class ConnectionPerformanceModel with _$ConnectionPerformanceModel {
  factory ConnectionPerformanceModel({
    @JsonKey(name: "connectionConnectCurrMonth")
    required int connectionConnectCurrMonth,
    @JsonKey(name: "connectionConnectLastMonth")
    required int connectionConnectLastMonth,
    @JsonKey(name: "connectionConnectPercentage")
    required int connectionConnectPercentage,
    @JsonKey(name: "connectionDisconnectCurrMonth")
    required int connectionDisconnectCurrMonth,
    @JsonKey(name: "connectionDisconnectLastMonth")
    required int connectionDisconnectLastMonth,
    @JsonKey(name: "connectionDisconnectPercentage")
    required int connectionDisconnectPercentage,
  }) = _ConnectionPerformanceModel;

  factory ConnectionPerformanceModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectionPerformanceModelFromJson(json);
}
