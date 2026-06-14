import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_field_model.freezed.dart';
part 'login_field_model.g.dart';

@freezed
class LoginFieldModel with _$LoginFieldModel {
  factory LoginFieldModel({
    @JsonKey(name: "username") required String username,
    @JsonKey(name: "password") required String password,
  }) = _LoginFieldModel;

  factory LoginFieldModel.fromJson(Map<String, dynamic> json) =>
      _$LoginFieldModelFromJson(json);
}
