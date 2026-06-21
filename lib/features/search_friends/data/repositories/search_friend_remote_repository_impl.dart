import 'package:fpdart/fpdart.dart';
import 'package:fpdart/src/task_either.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/search_friends/data/datasource/search_friend_remote_datasource.dart';
import 'package:to_do_app_flutter/features/search_friends/data/mapper/send_user_connection_mapper.dart';
import 'package:to_do_app_flutter/features/search_friends/domain/entities/search_user_entity.dart';
import 'package:to_do_app_flutter/features/search_friends/domain/entities/send_user_connection_field_entity.dart';
import 'package:to_do_app_flutter/features/search_friends/domain/repositories/search_friend_remote_repository.dart';

class SearchFriendRemoteRepositoryImpl implements SearchFriendRemoteRepository {
  final SearchFriendRemoteDatasource searchFriendRemoteDatasource;
  final SharedPreferences sharedPreferences;

  SearchFriendRemoteRepositoryImpl({
    required this.searchFriendRemoteDatasource,
    required this.sharedPreferences,
  });

  @override
  TaskEither<BaseException, SearchUserEntity> searchUserByUsername({
    required String username,
  }) {
    if (username == "") {
      return TaskEither.left(
        BaseException(
          message: "Error happen, username field must not empty",
          userMessage: "Error happen, username field must not empty",
          error: "Error happen, username field must not empty",
          stackTrace: StackTrace.current,
        ),
      );
    } else {
      final firstResponse = searchFriendRemoteDatasource
          .searchUserWithUsername(username: username)
          .flatMap((response) {
            if (response.isSuccess && response.result != null) {
              return TaskEither<BaseException, UserModel>.right(
                response.result!,
              );
            } else {
              return TaskEither<BaseException, UserModel>.left(
                BaseException(
                  message: response.message,
                  userMessage: response.message,
                  error: "Error Happen : ${response.message}",
                  stackTrace: StackTrace.current,
                ),
              );
            }
          });

      return firstResponse.flatMap((userModel) {
        // do get is connected
        final responseIsConnected = searchFriendRemoteDatasource.getIsConnected(
          userId: sharedPreferences.getString("user_id") ?? "",
          userConnectedId: userModel.userId,
        );

        return responseIsConnected.flatMap((isConnectedResponse) {
          if (isConnectedResponse.isSuccess &&
              isConnectedResponse.result != null) {
            return TaskEither.right(
              SearchUserEntity(
                isConnected: isConnectedResponse.result!,
                isSelf:
                    (sharedPreferences.getString("user_id") ?? "") ==
                    userModel.userId,
                userModel: userModel,
              ),
            );
          } else {
            return TaskEither.left(
              BaseException(
                message: isConnectedResponse.message,
                userMessage: isConnectedResponse.message,
                error: "Error Happen : ${isConnectedResponse.message}",
                stackTrace: StackTrace.current,
              ),
            );
          }
        });
      });
    }
  }

  @override
  TaskEither<BaseException, String> sendUserConnection({
    required SendUserConnectionFieldEntity sendUserConnection,
  }) {
    // create new send user connection field
    final updateSendUserConnectionField = SendUserConnectionFieldEntity(
      userOwnerId: sharedPreferences.getString("user_id") ?? "",
      userConnectionId: sendUserConnection.userConnectionId,
    );

    return searchFriendRemoteDatasource
        .sendUserConnection(
          sendUserConnection: updateSendUserConnectionField.toModel(),
        )
        .flatMap((response) {
          if (response.isSuccess && response.result != null) {
            return TaskEither.right(response.result!);
          } else {
            return TaskEither.left(
              BaseException(
                message: "Error Happen : ${response.message}",
                error: response.message,
                stackTrace: StackTrace.current,
              ),
            );
          }
        });
  }
}
