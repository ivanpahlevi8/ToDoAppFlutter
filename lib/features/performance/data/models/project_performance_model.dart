import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_performance_model.freezed.dart';
part 'project_performance_model.g.dart';

@freezed
class ProjectPerformanceModel with _$ProjectPerformanceModel {
  factory ProjectPerformanceModel({
    @JsonKey(name: "numberProjectLeadsCurrMonth")
    required int numberProjectLeadsCurrMonth,
    @JsonKey(name: "numberProjectLeadsLastMonth")
    required int numberProjectLeadsLastMonth,
    @JsonKey(name: "numberProjectLeadsPercentage")
    required int numberProjectLeadsPercentage,
    @JsonKey(name: "numberProjectInvolvedCurrMonth")
    required int numberProjectInvolvedCurrMonth,
    @JsonKey(name: "numberProjectInvolvedLastMonth")
    required int numberProjectInvolvedLastMonth,
    @JsonKey(name: "numberProjectInvolvedPercentage")
    required int numberProjectInvolvedPercentage,
  }) = _ProjectPerformanceModel;

  factory ProjectPerformanceModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectPerformanceModelFromJson(json);
}
