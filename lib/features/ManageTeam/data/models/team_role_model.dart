import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_role_model.freezed.dart';
part 'team_role_model.g.dart';

@freezed
class TeamRoleModel with _$TeamRoleModel {
  factory TeamRoleModel({
    @JsonKey(name: "teamRoleId") required int teamRoleId,
    @JsonKey(name: "roleName") required String roleName,
    @JsonKey(name: "teamId") required int teamId,
  }) = _TeamRoleModel;

  factory TeamRoleModel.fromJson(Map<String, dynamic> json) =>
      _$TeamRoleModelFromJson(json);
}
