import 'package:freezed_annotation/freezed_annotation.dart';

part 'role_team_input_model.freezed.dart';
part 'role_team_input_model.g.dart';

@freezed
class RoleTeamInputModel with _$RoleTeamInputModel {
  factory RoleTeamInputModel({
    @JsonKey(name: "roleName") required String roleName,
    @JsonKey(name: "teamId") required int teamId,
  }) = _RoleTeamInputModel;

  factory RoleTeamInputModel.fromJson(Map<String, dynamic> json) =>
      _$RoleTeamInputModelFromJson(json);
}
