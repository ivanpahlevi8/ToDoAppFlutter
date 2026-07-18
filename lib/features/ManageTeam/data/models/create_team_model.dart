import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_team_model.freezed.dart';
part 'create_team_model.g.dart';

@freezed
class CreateTeamModel with _$CreateTeamModel {
  factory CreateTeamModel({
    @JsonKey(name: "teamName") required String teamName,
    @JsonKey(name: "teamDescription") required String teamDescription,
    @JsonKey(name: "teamLeader") required String teamLeader,
  }) = _CreateTeamModel;

  factory CreateTeamModel.fromJson(Map<String, dynamic> json) =>
      _$CreateTeamModelFromJson(json);
}
