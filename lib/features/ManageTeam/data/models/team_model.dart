import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_model.freezed.dart';
part 'team_model.g.dart';

@freezed
class TeamModel with _$TeamModel {
  factory TeamModel({
    @JsonKey(name: "teamId") required int teamId,
    @JsonKey(name: "teamName") required String teamName,
    @JsonKey(name: "teamDescription") required String teamDescription,
    @JsonKey(name: "teamLeader") required String teamLeaderId,
    @JsonKey(name: "createdAt") required String createdAt,
  }) = _TeamModel;

  factory TeamModel.fromJson(Map<String, dynamic> json) =>
      _$TeamModelFromJson(json);
}
