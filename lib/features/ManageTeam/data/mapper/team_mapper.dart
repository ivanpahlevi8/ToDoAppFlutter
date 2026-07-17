import 'package:to_do_app_flutter/features/ManageTeam/data/models/team_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_entity.dart';

extension TeamModelMapper on TeamModel {
  TeamEntity toEntity() {
    return TeamEntity(
      teamId: teamId,
      teamName: teamName,
      teamDescription: teamDescription,
      teamLeaderId: teamLeaderId,
      createdAt: createdAt,
    );
  }
}

extension TeamEntityMapper on TeamEntity {
  TeamModel toModel() {
    return TeamModel(
      teamId: teamId,
      teamName: teamName,
      teamDescription: teamDescription,
      teamLeaderId: teamLeaderId,
      createdAt: createdAt,
    );
  }
}
