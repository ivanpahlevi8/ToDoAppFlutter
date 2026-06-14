import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    @JsonKey(name: "firstName") required String firstName,
    @JsonKey(name: "lastName") required String lastName,
    @JsonKey(name: "createdAt") required String createdAt,
    @JsonKey(name: "id") required String userId,
    @JsonKey(name: "userName") required String userName,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "phoneNumber") required String phoneNumber,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
