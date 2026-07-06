import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/usecase/connection_remote_usecase.dart';

part 'decline_connection_provider.g.dart';

@riverpod
class DeclineConnectionProvider extends _$DeclineConnectionProvider {
  @override
  FutureOr<ConnectionViewEntity?> build() {
    return null;
  }

  // create function to decline user
  Future<void> declineConnection({required int connectionId}) async {
    // update state into loading state
    state = AsyncValue.loading();

    // add some delay for better transition
    await Future.delayed(Duration(milliseconds: 500));

    // decline user connection
    final response = await sl<ConnectionRemoteUsecase>()
        .declineConnection(connectionId: connectionId)
        .run();

    response.fold(
      (exception) {
        state = AsyncValue.error(exception.error!, exception.stackTrace!);
      },
      (data) {
        state = AsyncValue.data(data);
      },
    );
  }
}
