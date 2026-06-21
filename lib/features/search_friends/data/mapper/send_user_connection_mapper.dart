import 'package:to_do_app_flutter/features/search_friends/data/model/send_user_connection_field_model.dart';
import 'package:to_do_app_flutter/features/search_friends/domain/entities/send_user_connection_field_entity.dart';

extension SendUserConnectionFieldModelMapper on SendUserConnectionFieldModel {
  SendUserConnectionFieldEntity toEntity() {
    return SendUserConnectionFieldEntity(
      userOwnerId: userOwnerId,
      userConnectionId: userConnectionId,
    );
  }
}

extension SendUserConnectionFieldEntityMapper on SendUserConnectionFieldEntity {
  SendUserConnectionFieldModel toModel() {
    return SendUserConnectionFieldModel(
      userOwnerId: userOwnerId,
      userConnectionId: userConnectionId,
    );
  }
}
