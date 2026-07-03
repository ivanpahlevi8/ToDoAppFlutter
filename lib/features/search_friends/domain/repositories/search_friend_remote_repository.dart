import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/search_friends/domain/entities/search_user_entity.dart';
import 'package:to_do_app_flutter/features/search_friends/domain/entities/send_user_connection_field_entity.dart';

abstract interface class SearchFriendRemoteRepository {
  // create function to search user
  TaskEither<BaseException, SearchUserEntity> searchUserByUsername({
    required String username,
  });

  // create functio to send user connection
  TaskEither<BaseException, String> sendUserConnection({
    required SendUserConnectionFieldEntity sendUserConnection,
  });
}
