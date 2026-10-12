import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/features/ManageProject/data/models/project_model.dart';

part 'project_summary_model.freezed.dart';
part 'project_summary_model.g.dart';

@freezed
class ProjectSummaryModel with _$ProjectSummaryModel {
  factory ProjectSummaryModel({
    @JsonKey(name: "projectInvolvedNumber") required int projectInvolvedNumber,
    @JsonKey(name: "projectLeadNumber") required int projectLeadNumber,
    @JsonKey(name: "projectMemberNumber") required int projectNumberMember,
    @JsonKey(name: "topThreeProjectAsMember")
    required List<ProjectModel> topThreeProjectAsMember,
    @JsonKey(name: "topThreeProjectAsLeader")
    required List<ProjectModel> topThreeProjectAsLeader,
  }) = _ProjectSummaryModel;

  factory ProjectSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectSummaryModelFromJson(json);
}
