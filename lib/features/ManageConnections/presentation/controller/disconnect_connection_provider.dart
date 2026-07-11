import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/usecase/connection_remote_usecase.dart';

part 'disconnect_connection_provider.g.dart';

@riverpod
class DisconnectConnectionProvider extends _$DisconnectConnectionProvider {
  @override
  FutureOr<ConnectionViewEntity?> build() {
    return null;
  }

  Future<void> disconnectConnection({required int connectionId}) async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 500));

    final response = await sl<ConnectionRemoteUsecase>()
        .disconnectConnection(connectionId: connectionId)
        .run();

    response.fold(
      (excption) {
        state = AsyncValue.error(excption.error!, excption.stackTrace!);
      },
      (data) {
        state = AsyncValue.data(data);
      },
    );
  }
}
