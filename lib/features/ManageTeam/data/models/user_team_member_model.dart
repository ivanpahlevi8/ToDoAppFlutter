import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_team_member_model.freezed.dart';
part 'user_team_member_model.g.dart';

@freezed
class UserTeamMemberModel with _$UserTeamMemberModel {
  factory UserTeamMemberModel({
    @JsonKey(name: "id") required String userId,
    @JsonKey(name: "email") required String userEmail,
    @JsonKey(name: "firstName") required String firstName,
    @JsonKey(name: "lastName") required String lastName,
    @JsonKey(name: "createdAt") required String createdAt,
  }) = _UserTeamMemberModel;

  factory UserTeamMemberModel.fromJson(Map<String, dynamic> json) =>
      _$UserTeamMemberModelFromJson(json);
}
