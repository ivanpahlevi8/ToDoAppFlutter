import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/usecase/connection_remote_usecase.dart';

part 'remove_connection_provider.g.dart';

@riverpod
class RemoveConnectionProvider extends _$RemoveConnectionProvider {
  @override
  FutureOr<ConnectionViewEntity?> build() {
    return null;
  }

  // create function to remove connection
  Future<void> removeConnection({required int connectionId}) async {
    // set state into loading
    state = AsyncValue.loading();

    // add delay
    await Future.delayed(Duration(milliseconds: 500));

    // remove connection
    final result = await sl<ConnectionRemoteUsecase>()
        .removeConnection(connectionId: connectionId)
        .run();

    result.fold(
      (exception) {
        state = AsyncValue.error(exception.error!, exception.stackTrace!);
      },
      (data) {
        state = AsyncValue.data(data);
      },
    );
  }
}
