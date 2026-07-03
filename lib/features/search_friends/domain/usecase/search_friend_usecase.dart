import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/search_friends/domain/entities/search_user_entity.dart';
import 'package:to_do_app_flutter/features/search_friends/domain/entities/send_user_connection_field_entity.dart';
import 'package:to_do_app_flutter/features/search_friends/domain/repositories/search_friend_remote_repository.dart';

class SearchFriendUsecase {
  final SearchFriendRemoteRepository searchFriendRemoteRepository;

  SearchFriendUsecase({required this.searchFriendRemoteRepository});

  // create function to search user
  TaskEither<BaseException, SearchUserEntity> searchUserByUsername({
    required String username,
  }) {
    return searchFriendRemoteRepository.searchUserByUsername(
      username: username,
    );
  }

  // create function to send connection
  TaskEither<BaseException, String> sendUserConnection({
    required SendUserConnectionFieldEntity sendUserConnection,
  }) {
    return searchFriendRemoteRepository.sendUserConnection(
      sendUserConnection: sendUserConnection,
    );
  }
}
