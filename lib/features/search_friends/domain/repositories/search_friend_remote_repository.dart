import 'package:fpdart/fpdart.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';

abstract interface class SearchFriendRemoteRepository {
  // create function to search user
  TaskEither<BaseException, UserModel> searchUserByUsername({
    required String username,
  });
}
