import 'package:fpdart/src/task_either.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/ManageConnections/data/datasource/connection_remote_datasource.dart';
import 'package:to_do_app_flutter/features/ManageProject/data/datasource/manage_project_remote_datasource.dart';
import 'package:to_do_app_flutter/features/ManageProject/data/mapper/project_mapper.dart';
import 'package:to_do_app_flutter/features/ManageProject/data/models/project_model.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/create_project_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/project_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/repositories/manage_project_remote_repository.dart';

class ManageProjectRemoteRepositoryImpl
    implements ManageProjectRemoteRepository {
  // create instance for datasource
  final ManageProjectRemoteDatasource manageProjectRemoteDatasource;
  final ConnectionRemoteDatasource connectionRemoteDatasource;
  final SharedPreferences sharedPreferences;

  ManageProjectRemoteRepositoryImpl(
      {required this.manageProjectRemoteDatasource,
      required this.connectionRemoteDatasource,
      required this.sharedPreferences});

  @override
  TaskEither<BaseException, List<ProjectEntity>> getAllProjectWithinTeam(
      {required int teamId}) {
    // get all project task
    final getAllProjectTask =
        manageProjectRemoteDatasource.getAllProjectByTeam(teamId: teamId);

    // return project
    return getAllProjectTask.flatMap((projectListResponse) {
      // check on response
      if (!projectListResponse.isSuccess &&
          projectListResponse.result == null) {
        return TaskEither.left(BaseException(
            error:
                "Error happen when get all project : ${projectListResponse.message}",
            message: projectListResponse.message,
            stackTrace: StackTrace.current));
      }

      // get all project list
      List<ProjectModel> allprojectList = projectListResponse.result!;

      // create list of executed task
      List<TaskEither<BaseException, ProjectEntity>> executedTask = [];

      // loop through all project list
      allprojectList.map((projectModel) {
        // get user from project model
        final getUserTask = connectionRemoteDatasource.getUserById(
            userId: projectModel.projectUserLeadId);

        // check for response
        executedTask.add(getUserTask.flatMap((getUserResponse) {
          if (!getUserResponse.isSuccess && getUserResponse.result == null) {
            return TaskEither.left(BaseException(
              error: "Error Happen When Get User : ${getUserResponse.message}",
              message: getUserResponse.message,
              stackTrace: StackTrace.current,
            ));
          }

          // get user model
          final getUser = getUserResponse.result!;

          return TaskEither.right(projectModel.toEntity(getUser));
        }));
      }).toList();

      return TaskEither.sequenceList(executedTask);
    });
  }

  @override
  TaskEither<BaseException, String> createProjectWithinTeam(
      {required CreateProjectEntity projectEntity}) {
    // create copy for project entity
    CreateProjectEntity createProjectEntity = CreateProjectEntity(
        projectName: projectEntity.projectName,
        projectDescription: projectEntity.projectDescription,
        projectUserLeadId: sharedPreferences.getString("user_id") ?? "",
        projectStatus: "CREATED",
        projectTeamId: projectEntity.projectTeamId);

    // do request
    final response = manageProjectRemoteDatasource.createProjectWithinTeam(
        createProject: createProjectEntity.toModel());

    // return response
    return response.flatMap((responseResult) {
      // check response result
      if (!responseResult.isSuccess && responseResult.result == null) {
        return TaskEither.left(BaseException(
            message: responseResult.message,
            error: "Error Happen : ${responseResult.message}",
            stackTrace: StackTrace.current));
      }

      // get result
      String getResult = responseResult.result!;

      return TaskEither.right(getResult);
    });
  }

  @override
  TaskEither<BaseException, String> deleteProject({required int projectId}) {
    // delete project
    final responseTask =
        manageProjectRemoteDatasource.deleteProject(projectId: projectId);

    return responseTask.flatMap((projectResponse) {
      if (!projectResponse.isSuccess || projectResponse.result == null) {
        return TaskEither.left(BaseException(
            message: projectResponse.message,
            error: "Error Happen : ${projectResponse.message}",
            stackTrace: StackTrace.current));
      }

      // get result
      final result = projectResponse.result!;

      return TaskEither.right(result);
    });
  }

  @override
  TaskEither<BaseException, ProjectEntity> getProjectDetail(
      {required int projectId}) {
    // get project result
    final getProjectTask =
        manageProjectRemoteDatasource.getProjectDetail(projectId: projectId);

    return getProjectTask.flatMap((projectResponse) {
      if (!projectResponse.isSuccess || projectResponse.result == null) {
        return TaskEither.left(BaseException(
          error: "Error Happen : ${projectResponse.message}",
          message: projectResponse.message,
          stackTrace: StackTrace.current,
        ));
      }

      // get reuslt
      ProjectModel getResult = projectResponse.result!;

      // get user model task
      final getUserTask = connectionRemoteDatasource.getUserById(
          userId: getResult.projectUserLeadId);

      return getUserTask.flatMap((getUserResponse) {
        if (!getUserResponse.isSuccess || getUserResponse.result == null) {
          return TaskEither.left(BaseException(
              error:
                  "Error when getting project lead user : ${getUserResponse.message}",
              message: getUserResponse.message,
              stackTrace: StackTrace.current));
        }

        // get user result
        final getUserResult = getUserResponse.result!;

        // return project entity
        return TaskEither.right(getResult.toEntity(getUserResult));
      });
    });
  }

  @override
  TaskEither<BaseException, List<ToDoEntity>> getAllToDoProject(
      {required int projectId}) {
    // do request
    final responseTask =
        manageProjectRemoteDatasource.getAllToDoProject(projectId: projectId);

    return responseTask.flatMap((projectResponse) {
      if (!projectResponse.isSuccess || projectResponse.result == null) {
        return TaskEither.left(BaseException(
          error: "Error Happen : ${projectResponse.message}",
          stackTrace: StackTrace.current,
          message: projectResponse.message,
        ));
      }

      // get all todo model
      final getAllToDo = projectResponse.result!;

      final getAllToDoEntity = (getAllToDo).map((entity) {
        return entity.toEntity();
      }).toList();

      return TaskEither.right(getAllToDoEntity);
    });
  }
}
