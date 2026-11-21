import 'package:to_do_app_flutter/features/performance/data/models/TeamChartPerformanceModel.dart';
import 'package:to_do_app_flutter/features/performance/data/models/chart_object_model.dart';
import 'package:to_do_app_flutter/features/performance/data/models/connection_chart_performance_model.dart';
import 'package:to_do_app_flutter/features/performance/data/models/connection_performance_model.dart';
import 'package:to_do_app_flutter/features/performance/data/models/project_chart_performance_model.dart';
import 'package:to_do_app_flutter/features/performance/data/models/project_performance_model.dart';
import 'package:to_do_app_flutter/features/performance/data/models/team_performance_model.dart';
import 'package:to_do_app_flutter/features/performance/data/models/todo_chart_performance_model.dart';
import 'package:to_do_app_flutter/features/performance/data/models/todo_performance_model.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/chart_object_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/connection_chart_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/connection_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/project_chart_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/project_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/team_chart_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/team_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/todo_chart_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/todo_performance_entity.dart';

extension ToDoPerformanceModelMapper on ToDoPerformanceModel {
  ToDoPerformanceEntity toEntity() {
    return ToDoPerformanceEntity(
        numberToDoCreatedThisMonth: numberToDoCreatedThisMonth,
        numberToDoCreatedLastMonth: numberToDoCreatedLastMonth,
        percentageToDoCreated: percentageToDoCreated,
        numberToDoOnProgressedThisMonth: numberToDoOnProgressedThisMonth,
        numberToDoOnProgressedLastMonth: numberToDoOnProgressedLastMonth,
        percentageToDoOnProgressed: percentageToDoOnProgressed,
        numberToDoDoneThisMonth: numberToDoDoneThisMonth,
        numberToDoDoneLastMonth: numberToDoDoneLastMonth,
        percentageToDoDone: percentageToDoDone);
  }
}

extension ToDoPerformanceEntityMapper on ToDoPerformanceEntity {
  ToDoPerformanceModel toModel() {
    return ToDoPerformanceModel(
        numberToDoCreatedThisMonth: numberToDoCreatedThisMonth,
        numberToDoCreatedLastMonth: numberToDoCreatedLastMonth,
        percentageToDoCreated: percentageToDoCreated,
        numberToDoOnProgressedThisMonth: numberToDoOnProgressedThisMonth,
        numberToDoOnProgressedLastMonth: numberToDoOnProgressedLastMonth,
        percentageToDoOnProgressed: percentageToDoOnProgressed,
        numberToDoDoneThisMonth: numberToDoDoneThisMonth,
        numberToDoDoneLastMonth: numberToDoDoneLastMonth,
        percentageToDoDone: percentageToDoDone);
  }
}

extension ProjectPerformanceModelMapper on ProjectPerformanceModel {
  ProjectPerformanceEntity toEntity() {
    return ProjectPerformanceEntity(
        numberProjectLeadsCurrMonth: numberProjectLeadsCurrMonth,
        numberProjectLeadsLastMonth: numberProjectLeadsLastMonth,
        numberProjectLeadsPercentage: numberProjectLeadsPercentage,
        numberProjectInvolvedCurrMonth: numberProjectInvolvedCurrMonth,
        numberProjectInvolvedLastMonth: numberProjectInvolvedLastMonth,
        numberProjectInvolvedPercentage: numberProjectInvolvedPercentage);
  }
}

extension ProjectPerformanceEntityMapper on ProjectPerformanceEntity {
  ProjectPerformanceModel toModel() {
    return ProjectPerformanceModel(
        numberProjectLeadsCurrMonth: numberProjectLeadsCurrMonth,
        numberProjectLeadsLastMonth: numberProjectLeadsLastMonth,
        numberProjectLeadsPercentage: numberProjectLeadsPercentage,
        numberProjectInvolvedCurrMonth: numberProjectInvolvedCurrMonth,
        numberProjectInvolvedLastMonth: numberProjectInvolvedLastMonth,
        numberProjectInvolvedPercentage: numberProjectInvolvedPercentage);
  }
}

extension TeamPerformanceModelMapper on TeamPerformanceModel {
  TeamPerformanceEntity toEntity() {
    return TeamPerformanceEntity(
        numberTeamLeadsCurrMonth: numberTeamLeadsCurrMonth,
        numberTeamLeadsLastMonth: numberTeamLeadsLastMonth,
        numberTeamLeadsPercentage: numberTeamLeadsPercentage,
        numberTeamInvolvedCurrMonth: numberTeamInvolvedCurrMonth,
        numberTeamInvolvedLastMonth: numberTeamInvolvedLastMonth,
        numberTeamInvolvedPercentage: numberTeamInvolvedPercentage);
  }
}

extension ConnectionPerformanceModelMapper on ConnectionPerformanceModel {
  ConnectionPerformanceEntity toEntity() {
    return ConnectionPerformanceEntity(
        connectionConnectCurrMonth: connectionConnectCurrMonth,
        connectionConnectLastMonth: connectionConnectLastMonth,
        connectionConnectPercentage: connectionConnectPercentage,
        connectionDisconnectCurrMonth: connectionDisconnectCurrMonth,
        connectionDisconnectLastMonth: connectionDisconnectLastMonth,
        connectionDisconnectPercentage: connectionDisconnectPercentage);
  }
}

extension ChartObjectModelMapper on ChartObjectModel {
  ChartObjectEntity toEntity() {
    return ChartObjectEntity(year: year, month: month, count: count);
  }
}

extension ToDoChartPerformanceModelMapper on ToDoChartPerformanceModel {
  ToDoChartPerformanceEntity toEntity() {
    return ToDoChartPerformanceEntity(
        toDoOnCreated: toDoOnCreated.map((e) => e.toEntity()).toList(),
        toDoOnProgressed: toDoOnProgressed.map((e) => e.toEntity()).toList(),
        toDoOnFinished: toDoOnFinished.map((e) => e.toEntity()).toList());
  }
}

extension ProjectChartPerformanceModelMapper on ProjectChartPerformanceModel {
  ProjectChartPerformanceEntity toEntity() {
    return ProjectChartPerformanceEntity(
        projectLeads: projectLeads.map((e) => e.toEntity()).toList(),
        projectMember: projectMember.map((e) => e.toEntity()).toList());
  }
}

extension TeamChartPerformanceModelMapper on TeamChartPerformanceModel {
  TeamChartPerformanceEntity toEntity() {
    return TeamChartPerformanceEntity(
        teamsAsLeader: teamsAsLeader.map((e) => e.toEntity()).toList(),
        teamsAsMember: teamsAsMember.map((e) => e.toEntity()).toList());
  }
}

extension ConnectionChartPerformanceModelMapper
    on ConnectionChartPerformanceModel {
  ConnectionChartPerformanceEntity toEntity() {
    return ConnectionChartPerformanceEntity(
        connectionsConnected:
            connectionsConnected.map((e) => e.toEntity()).toList(),
        connectionsDisconnected:
            connectionsDisconnected.map((e) => e.toEntity()).toList());
  }
}
