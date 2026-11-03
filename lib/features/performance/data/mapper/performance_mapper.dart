import 'package:to_do_app_flutter/features/performance/data/models/connection_performance_model.dart';
import 'package:to_do_app_flutter/features/performance/data/models/project_performance_model.dart';
import 'package:to_do_app_flutter/features/performance/data/models/team_performance_model.dart';
import 'package:to_do_app_flutter/features/performance/data/models/todo_performance_model.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/connection_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/project_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/team_performance_entity.dart';
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
