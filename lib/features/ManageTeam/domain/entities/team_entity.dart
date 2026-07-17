import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_entity.freezed.dart';

@freezed
class TeamEntity with _$TeamEntity {
  factory TeamEntity({
    required int teamId,
    required String teamName,
    required String teamDescription,
    required String teamLeaderId,
    required String createdAt,
  }) = _TeamEntity;
}
