import 'package:freezed_annotation/freezed_annotation.dart';

part 'role_team_entity.freezed.dart';

@freezed
class RoleTeamEntity with _$RoleTeamEntity {
  factory RoleTeamEntity({
    required int teamRoleId,
    required String teamRoleName,
    required int teamId,
  }) = _RoleTeamEntity;
}
