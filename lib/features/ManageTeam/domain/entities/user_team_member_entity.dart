import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_team_member_entity.freezed.dart';

@freezed
class UserTeamMemberEntity with _$UserTeamMemberEntity {
  factory UserTeamMemberEntity({
    required String userId,
    required String email,
    required String firstName,
    required String lastName,
    required String createdAt,
  }) = _UserTeamMemberEntity;
}
