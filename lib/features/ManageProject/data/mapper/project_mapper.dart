import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/ManageProject/data/models/create_project_model.dart';
import 'package:to_do_app_flutter/features/ManageProject/data/models/project_model.dart';
import 'package:to_do_app_flutter/features/ManageProject/data/models/to_do_model.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/create_project_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/project_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_entity.dart';

extension ProjectModelMapper on ProjectModel {
  ProjectEntity toEntity(UserModel userModel) {
    return ProjectEntity(
      projectId: projectId,
      projectName: projectName,
      projectDescription: projectDescription,
      projectLeadUserId: projectUserLeadId,
      projectStatus: projectStatus,
      projectTeamId: projectTeamId,
      createdAt: createdAt,
      userModel: userModel,
    );
  }
}

extension ProjectEntityMapper on ProjectEntity {
  ProjectModel toModel() {
    return ProjectModel(
        projectId: projectId,
        projectName: projectName,
        projectDescription: projectDescription,
        projectUserLeadId: projectLeadUserId,
        projectStatus: projectStatus,
        projectTeamId: projectTeamId,
        createdAt: createdAt);
  }
}

extension CreateProjectModelMapper on CreateProjectModel {
  CreateProjectEntity toEntity() {
    return CreateProjectEntity(
        projectName: projectName,
        projectDescription: projectDescription,
        projectUserLeadId: projectUserLead,
        projectStatus: projectStatus,
        projectTeamId: projectTeamId);
  }
}

extension CreateProjectEntityMapper on CreateProjectEntity {
  CreateProjectModel toModel() {
    return CreateProjectModel(
        projectName: projectName,
        projectDescription: projectDescription,
        projectUserLead: projectUserLeadId,
        projectStatus: projectStatus,
        projectTeamId: projectTeamId);
  }
}

extension ToDoModelMapper on ToDoModel {
  ToDoEntity toEntity() {
    return ToDoEntity(
        toDoId: toDoID,
        projectId: projectId,
        todoName: toDoName,
        toDoDescription: toDoDescription,
        toDoState: toDoState,
        toDoCreatedAt: createdAt);
  }
}
