import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/project_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/repositories/manage_project_remote_repository.dart';

class ManageProjectUsecase {
  final ManageProjectRemoteRepository manageProjectRemoteRepository;

  ManageProjectUsecase({required this.manageProjectRemoteRepository});

  // function to get all project within team
  TaskEither<BaseException, List<ProjectEntity>> getAllProjectWithinTeam(
      {required int teamId}) {
    return manageProjectRemoteRepository.getAllProjectWithinTeam(
        teamId: teamId);
  }
}
