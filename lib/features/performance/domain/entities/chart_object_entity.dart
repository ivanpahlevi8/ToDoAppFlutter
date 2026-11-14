import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_object_entity.freezed.dart';

@freezed
class ChartObjectEntity with _$ChartObjectEntity {
  factory ChartObjectEntity({
    @JsonKey(name: "year") required int year,
    @JsonKey(name: "month") required int month,
    @JsonKey(name: "count") required int count,
  }) = _ChartObjectEntity;
}
