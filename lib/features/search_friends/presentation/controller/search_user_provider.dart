import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/search_friends/domain/usecase/search_friend_usecase.dart';

part 'search_user_provider.g.dart';

@riverpod
class SearchUserProvider extends _$SearchUserProvider {
  @override
  FutureOr<UserModel?> build() {
    return null;
  }

  // create function to searcg user by usernam
  Future<void> searchUserByUsername({required String username}) async {
    state = AsyncValue.loading();
    print("CHECK: Start to search friends");
    final response = await sl<SearchFriendUsecase>()
        .searchUserByUsername(username: username)
        .run();
    print("CHECK: Finish search friend");

    state = response.fold(
      (excpetion) {
        return AsyncValue.error(excpetion.message!, excpetion.stackTrace!);
      },
      (data) {
        return AsyncValue.data(data);
      },
    );
  }
}
