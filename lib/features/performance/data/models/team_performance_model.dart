import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_performance_model.freezed.dart';
part 'team_performance_model.g.dart';

@freezed
class TeamPerformanceModel with _$TeamPerformanceModel {
  factory TeamPerformanceModel({
    @JsonKey(name: "numberTeamLeadsCurrMonth")
    required int numberTeamLeadsCurrMonth,
    @JsonKey(name: "numberTeamLeadsLastMonth")
    required int numberTeamLeadsLastMonth,
    @JsonKey(name: "numberTeamLeadsPercentage")
    required int numberTeamLeadsPercentage,
    @JsonKey(name: "numberTeamInvolvedCurrMonth")
    required int numberTeamInvolvedCurrMonth,
    @JsonKey(name: "numberTeamInvolvedPercentage")
    required int numberTeamInvolvedLastMonth,
    @JsonKey(name: "numberTeamInvolvedLastMonth")
    required int numberTeamInvolvedPercentage,
  }) = _TeamPerformanceModel;

  factory TeamPerformanceModel.fromJson(Map<String, dynamic> json) =>
      _$TeamPerformanceModelFromJson(json);
}
