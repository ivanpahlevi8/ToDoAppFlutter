import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_project_model.freezed.dart';
part 'create_project_model.g.dart';

@freezed
class CreateProjectModel with _$CreateProjectModel {
  factory CreateProjectModel({
    @JsonKey(name: "projectName") required String projectName,
    @JsonKey(name: "projectDescription") required String projectDescription,
    @JsonKey(name: "projectUserLeadId") required String projectUserLead,
    @JsonKey(name: "projectStatus") required String projectStatus,
    @JsonKey(name: "projectTeamId") required int projectTeamId,
  }) = _CreateProjectModel;

  factory CreateProjectModel.fromJson(Map<String, dynamic> json) =>
      _$CreateProjectModelFromJson(json);
}
