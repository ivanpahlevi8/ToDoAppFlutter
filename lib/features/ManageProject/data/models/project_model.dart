import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_model.freezed.dart';
part 'project_model.g.dart';

@freezed
class ProjectModel with _$ProjectModel {
  factory ProjectModel({
    @JsonKey(name: "projectId") required int projectId,
    @JsonKey(name: "projectName") required String projectName,
    @JsonKey(name: "projectDescription") required String projectDescription,
    @JsonKey(name: "projectUserLeadId") required String projectUserLeadId,
    @JsonKey(name: "projectStatus") required String projectStatus,
    @JsonKey(name: "projectTeamId") required int projectTeamId,
    @JsonKey(name: "createdAt") required String createdAt,
  }) = _ProjectModel;

  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectModelFromJson(json);
}
