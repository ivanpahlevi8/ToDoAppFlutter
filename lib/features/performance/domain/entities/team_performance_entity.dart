import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_performance_entity.freezed.dart';

@freezed
class TeamPerformanceEntity with _$TeamPerformanceEntity {
  factory TeamPerformanceEntity({
    required int numberTeamLeadsCurrMonth,
    required int numberTeamLeadsLastMonth,
    required int numberTeamLeadsPercentage,
    required int numberTeamInvolvedCurrMonth,
    required int numberTeamInvolvedLastMonth,
    required int numberTeamInvolvedPercentage,
  }) = _TeamPerformanceEntity;
}
