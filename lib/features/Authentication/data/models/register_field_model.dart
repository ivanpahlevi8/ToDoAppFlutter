import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_field_model.freezed.dart';
part 'register_field_model.g.dart';

@freezed
class RegisterFieldModel with _$RegisterFieldModel {
  factory RegisterFieldModel({
    @JsonKey(name: "userName") required String username,
    @JsonKey(name: "password") required String password,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "phoneNumber") required String phoneNumber,
    @JsonKey(name: "firstName") required String firstName,
    @JsonKey(name: "lastName") required String lastName,
  }) = _RegisterFieldModel;

  factory RegisterFieldModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterFieldModelFromJson(json);
}
