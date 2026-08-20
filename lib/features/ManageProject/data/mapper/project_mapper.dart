import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/ManageProject/data/models/project_model.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/project_entity.dart';

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
