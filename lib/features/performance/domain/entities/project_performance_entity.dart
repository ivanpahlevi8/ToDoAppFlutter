import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_performance_entity.freezed.dart';

@freezed
class ProjectPerformanceEntity with _$ProjectPerformanceEntity {
  factory ProjectPerformanceEntity({
    required int numberProjectLeadsCurrMonth,
    required int numberProjectLeadsLastMonth,
    required int numberProjectLeadsPercentage,
    required int numberProjectInvolvedCurrMonth,
    required int numberProjectInvolvedLastMonth,
    required int numberProjectInvolvedPercentage,
  }) = _ProjectPerformanceEntity;
}
