import 'package:to_do_app_flutter/features/Authentication/data/models/register_field_model.dart';
import 'package:to_do_app_flutter/features/Authentication/domain/entitiy/register_field_entity.dart';

extension RegisterFieldModelMapper on RegisterFieldModel {
  RegisterFieldEntity toEntity() {
    return RegisterFieldEntity(
      username: username,
      password: password,
      email: email,
      phoneNumber: phoneNumber,
      firstName: firstName,
      lastName: lastName,
    );
  }
}

extension RegisterFieldEntityMapper on RegisterFieldEntity {
  RegisterFieldModel toModel() {
    return RegisterFieldModel(
      username: username,
      password: password,
      email: email,
      phoneNumber: phoneNumber,
      firstName: firstName,
      lastName: lastName,
    );
  }
}
