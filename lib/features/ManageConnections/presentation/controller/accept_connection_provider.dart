import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/usecase/connection_remote_usecase.dart';

part 'accept_connection_provider.g.dart';

@riverpod
class AcceptConnectionProvider extends _$AcceptConnectionProvider {
  @override
  FutureOr<ConnectionViewEntity?> build() {
    return null;
  }

  // function to accept connection
  Future<void> acceptConnection({required int connectionId}) async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 500));

    final response = await sl<ConnectionRemoteUsecase>()
        .acceptConnection(connectionId: connectionId)
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
