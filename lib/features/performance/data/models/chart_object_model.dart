import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_object_model.freezed.dart';
part 'chart_object_model.g.dart';

@freezed
class ChartObjectModel with _$ChartObjectModel {
  factory ChartObjectModel({
    required int year,
    required int month,
    required int count,
  }) = _ChartObjectModel;

  factory ChartObjectModel.fromJson(Map<String, dynamic> json) =>
      _$ChartObjectModelFromJson(json);
}
