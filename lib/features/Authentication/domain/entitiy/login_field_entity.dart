import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_field_entity.freezed.dart';

@freezed
class LoginFieldEntity with _$LoginFieldEntity {
  factory LoginFieldEntity({
    required String username,
    required String password,
  }) = _LoginFieldEntity;
}
