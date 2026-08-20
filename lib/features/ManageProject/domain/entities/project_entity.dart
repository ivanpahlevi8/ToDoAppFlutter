import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';

part 'project_entity.freezed.dart';

@freezed
class ProjectEntity with _$ProjectEntity {
  factory ProjectEntity({
    required int projectId,
    required String projectName,
    required String projectDescription,
    required String projectLeadUserId,
    required String projectStatus,
    required int projectTeamId,
    required String createdAt,
    required UserModel? userModel,
  }) = _ProjectEntity;
}
