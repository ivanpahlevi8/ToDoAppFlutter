import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_project_entity.freezed.dart';

@freezed
class CreateProjectEntity with _$CreateProjectEntity {
  factory CreateProjectEntity({
    required String projectName,
    required String projectDescription,
    required String projectUserLeadId,
    required String projectStatus,
    required int projectTeamId,
  }) = _CreateProjectEntity;
}
