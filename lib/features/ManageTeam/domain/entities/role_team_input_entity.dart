import 'package:freezed_annotation/freezed_annotation.dart';

part 'role_team_input_entity.freezed.dart';

@freezed
class RoleTeamInputEntity with _$RoleTeamInputEntity {
  factory RoleTeamInputEntity({required int teamId, required String roleName}) =
      _RoleTeamInputEntity;
}
