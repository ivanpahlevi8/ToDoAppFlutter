import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/user_team_member_entity.dart';

part 'team_list_view_entity.freezed.dart';

@freezed
class TeamListViewEntity with _$TeamListViewEntity {
  factory TeamListViewEntity({
    required TeamEntity teamEntity,
    required UserModel teamLeader,
    required bool isTeamLead,
    required String loginUserId,
  }) = _TeamListViewEntity;
}
