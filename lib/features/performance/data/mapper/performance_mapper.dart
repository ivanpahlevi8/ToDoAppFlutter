import 'package:to_do_app_flutter/features/performance/data/models/project_performance_model.dart';
import 'package:to_do_app_flutter/features/performance/data/models/todo_performance_model.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/project_performance_entity.dart';
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
