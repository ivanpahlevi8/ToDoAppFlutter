import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/create_project_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/project_entity.dart';

abstract interface class ManageProjectRemoteRepository {
  // function to get all project within team
  TaskEither<BaseException, List<ProjectEntity>> getAllProjectWithinTeam(
      {required int teamId});

  // function to create project within team
  TaskEither<BaseException, String> createProjectWithinTeam(
      {required CreateProjectEntity projectEntity});

  // function to delete project
  TaskEither<BaseException, String> deleteProject({required int projectId});
}
