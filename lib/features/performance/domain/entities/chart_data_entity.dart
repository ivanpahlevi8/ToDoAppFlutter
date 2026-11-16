import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_data_entity.freezed.dart';

@freezed
class ChartDataEntity with _$ChartDataEntity {
  factory ChartDataEntity({
    required String month,
    required int numData,
    required String name,
  }) = _ChartDataEntity;
}
