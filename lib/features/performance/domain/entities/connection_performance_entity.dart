import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_performance_entity.freezed.dart';

@freezed
class ConnectionPerformanceEntity with _$ConnectionPerformanceEntity {
  factory ConnectionPerformanceEntity({
    required int connectionConnectCurrMonth,
    required int connectionConnectLastMonth,
    required int connectionConnectPercentage,
    required int connectionDisconnectCurrMonth,
    required int connectionDisconnectLastMonth,
    required int connectionDisconnectPercentage,
  }) = _ConnectionPerformanceEntity;
}
