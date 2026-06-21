import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_user_connection_field_entity.freezed.dart';

@freezed
class SendUserConnectionFieldEntity with _$SendUserConnectionFieldEntity {
  factory SendUserConnectionFieldEntity({
    required String userOwnerId,
    required String userConnectionId,
  }) = _SendUserConnectionFieldEntity;
}
