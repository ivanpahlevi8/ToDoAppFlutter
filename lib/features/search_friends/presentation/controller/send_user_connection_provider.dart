import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/search_friends/domain/entities/send_user_connection_field_entity.dart';
import 'package:to_do_app_flutter/features/search_friends/domain/usecase/search_friend_usecase.dart';
import 'package:to_do_app_flutter/features/search_friends/presentation/controller/search_user_provider.dart';

part 'send_user_connection_provider.g.dart';

@riverpod
class SendUserConnectionProvider extends _$SendUserConnectionProvider {
  @override
  FutureOr<String?> build() {
    return null;
  }

  // create function to send user connection
  Future<void> sendUserConnection({
    required SendUserConnectionFieldEntity sendUserConnection,
  }) async {
    state = AsyncValue.loading();

    final response = await sl<SearchFriendUsecase>()
        .sendUserConnection(sendUserConnection: sendUserConnection)
        .run();

    state = response.fold(
      (exception) {
        return AsyncValue.error(exception.message!, exception.stackTrace!);
      },
      (data) {
        ref.invalidate(searchUserProviderProvider);

        return AsyncValue.data(data);
      },
    );
  }
}
