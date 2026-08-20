import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/project_entity.dart';

abstract interface class ManageProjectRemoteRepository {
  // function to get all project within team
  TaskEither<BaseException, List<ProjectEntity>> getAllProjectWithinTeam(
      {required int teamId});
}
