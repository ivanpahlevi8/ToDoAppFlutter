import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_field_entity.freezed.dart';

@freezed
class RegisterFieldEntity with _$RegisterFieldEntity {
  factory RegisterFieldEntity({
    required String username,
    required String password,
    required String email,
    required String phoneNumber,
    required String firstName,
    required String lastName,
  }) = _RegisterFieldEntity;
}
