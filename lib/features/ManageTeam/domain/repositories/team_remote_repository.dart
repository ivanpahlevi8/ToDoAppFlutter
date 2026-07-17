import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_list_view_entity.dart';

abstract interface class TeamRemoteRepository {
  TaskEither<BaseException, List<TeamListViewEntity>> getAllTeamByUser();
}
