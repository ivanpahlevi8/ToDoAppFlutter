import 'package:to_do_app_flutter/features/Dashboard/data/models/project_summary_model.dart';
import 'package:to_do_app_flutter/features/Dashboard/data/models/team_summary_model.dart';
import 'package:to_do_app_flutter/features/Dashboard/data/models/todo_summary_model.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/project_summary_entity.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/team_summary_entity.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/todo_summary_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/data/mapper/project_mapper.dart';
import 'package:to_do_app_flutter/features/ManageTeam/data/mapper/team_mapper.dart';

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

extension ToDoSummaryModelMapper on ToDoSummaryModel {
  ToDoSummaryEntity toEntity() {
    return ToDoSummaryEntity(
        toDoNumber: toDoNumber,
        onCreateToDoNumber: onCreateToDoNumber,
        onProgressToDoNumber: onProgressToDoNumber,
        onFinishedToDoNumber: onFinishedToDoNumer,
        topThreeToDo: topThreeToDo.map((e) => e.toEntity()).toList());
  }
}

extension ToDoSummaryEntityMapper on ToDoSummaryEntity {
  ToDoSummaryModel toModel() {
    return ToDoSummaryModel(
        toDoNumber: toDoNumber,
        onCreateToDoNumber: onCreateToDoNumber,
        onProgressToDoNumber: onProgressToDoNumber,
        onFinishedToDoNumer: onFinishedToDoNumber,
        topThreeToDo: topThreeToDo.map((e) => e.toModel()).toList());
  }
}

extension TeamSummaryModelMapper on TeamSummaryModel {
  TeamSummaryEntity toEntity() {
    return TeamSummaryEntity(
        numberTeamInvolved: numberTeamInvolved,
        numberTeamLead: teamNumberLead,
        topTeamInvolved: topTeamInvolved.map((e) => e.toEntity()).toList(),
        topTeamLead: topTeamLeader.map((e) => e.toEntity()).toList());
  }
}

extension TeamSummaryEntityMapper on TeamSummaryEntity {
  TeamSummaryModel toModel() {
    return TeamSummaryModel(
        numberTeamInvolved: numberTeamInvolved,
        teamNumberLead: numberTeamLead,
        topTeamLeader: topTeamLead.map((e) => e.toModel()).toList(),
        topTeamInvolved: topTeamInvolved.map((e) => e.toModel()).toList());
  }
}
