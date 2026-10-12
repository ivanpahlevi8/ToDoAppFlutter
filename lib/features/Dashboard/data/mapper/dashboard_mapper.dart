import 'package:to_do_app_flutter/features/Dashboard/data/models/project_summary_model.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/project_summary_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/data/mapper/project_mapper.dart';

extension ProjectSummaryModelMapper on ProjectSummaryModel {
  ProjectSummaryEntity toEntity() {
    return ProjectSummaryEntity(
        projectInvolvedNumber: projectInvolvedNumber,
        projectLeadNumber: projectLeadNumber,
        projectMemberNumber: projectNumberMember,
        topThreeProjectAsMember:
            topThreeProjectAsMember.map((e) => e.toEntity(null)).toList(),
        topThreeProjectAsLeader:
            topThreeProjectAsLeader.map((e) => e.toEntity(null)).toList());
  }
}

extension ProjectSummaryEntityMapper on ProjectSummaryEntity {
  ProjectSummaryModel toModel() {
    return ProjectSummaryModel(
        projectInvolvedNumber: projectInvolvedNumber,
        projectLeadNumber: projectLeadNumber,
        projectNumberMember: projectInvolvedNumber,
        topThreeProjectAsMember:
            topThreeProjectAsMember.map((e) => e.toModel()).toList(),
        topThreeProjectAsLeader:
            topThreeProjectAsLeader.map((e) => e.toModel()).toList());
  }
}
