import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_user_connection_field_model.freezed.dart';
part 'send_user_connection_field_model.g.dart';

@freezed
class SendUserConnectionFieldModel with _$SendUserConnectionFieldModel {
  factory SendUserConnectionFieldModel({
    @JsonKey(name: "userOwnerId") required String userOwnerId,
    @JsonKey(name: "userConnectionId") required String userConnectionId,
  }) = _SendUserConnectionFieldModel;

  factory SendUserConnectionFieldModel.fromJson(Map<String, dynamic> json) =>
      _$SendUserConnectionFieldModelFromJson(json);
}
