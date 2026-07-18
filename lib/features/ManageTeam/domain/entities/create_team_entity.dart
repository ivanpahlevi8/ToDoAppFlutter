import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_team_entity.freezed.dart';

@freezed
class CreateTeamEntity with _$CreateTeamEntity {
  factory CreateTeamEntity({
    required String teamName,
    required String teamDescription,
  }) = _CreateTeamEntity;
}
