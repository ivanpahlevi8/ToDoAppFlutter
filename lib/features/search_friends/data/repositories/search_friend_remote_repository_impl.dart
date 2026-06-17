import 'package:fpdart/fpdart.dart';
import 'package:fpdart/src/task_either.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/search_friends/data/datasource/search_friend_remote_datasource.dart';
import 'package:to_do_app_flutter/features/search_friends/domain/repositories/search_friend_remote_repository.dart';

class SearchFriendRemoteRepositoryImpl implements SearchFriendRemoteRepository {
  final SearchFriendRemoteDatasource searchFriendRemoteDatasource;

  SearchFriendRemoteRepositoryImpl({
    required this.searchFriendRemoteDatasource,
  });

  @override
  TaskEither<BaseException, UserModel> searchUserByUsername({
    required String username,
  }) {
    return searchFriendRemoteDatasource
        .searchUserWithUsername(username: username)
        .flatMap((response) {
          if (response.isSuccess && response.result != null) {
            return TaskEither.right(response.result!);
          } else {
            return TaskEither.left(
              BaseException(
                message: response.message,
                userMessage: response.message,
                error: "Error Happen : ${response.message}",
                stackTrace: StackTrace.current,
              ),
            );
          }
        });
  }
}
