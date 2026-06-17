import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/search_friends/domain/repositories/search_friend_remote_repository.dart';

class SearchFriendUsecase {
  final SearchFriendRemoteRepository searchFriendRemoteRepository;

  SearchFriendUsecase({required this.searchFriendRemoteRepository});

  // create function to search user
  TaskEither<BaseException, UserModel> searchUserByUsername({
    required String username,
  }) {
    return searchFriendRemoteRepository.searchUserByUsername(
      username: username,
    );
  }
}
