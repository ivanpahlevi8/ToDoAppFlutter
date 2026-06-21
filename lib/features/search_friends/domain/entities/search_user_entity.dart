import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';

part 'search_user_entity.freezed.dart';

@freezed
class SearchUserEntity with _$SearchUserEntity {
  factory SearchUserEntity({
    required bool isConnected,
    required bool isSelf,
    required UserModel userModel,
  }) = _SearchUserEntity;
}
