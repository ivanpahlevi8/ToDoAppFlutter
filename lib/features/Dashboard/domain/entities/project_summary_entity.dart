import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/project_entity.dart';

part 'project_summary_entity.freezed.dart';

@freezed
class ProjectSummaryEntity with _$ProjectSummaryEntity {
  factory ProjectSummaryEntity({
    required int projectInvolvedNumber,
    required int projectLeadNumber,
    required int projectMemberNumber,
    required List<ProjectEntity> topThreeProjectAsMember,
    required List<ProjectEntity> topThreeProjectAsLeader,
  }) = _ProjectSummaryEntity;
}
