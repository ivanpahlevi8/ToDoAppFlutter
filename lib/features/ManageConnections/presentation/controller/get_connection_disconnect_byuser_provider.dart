import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/usecase/connection_remote_usecase.dart';

part 'get_connection_disconnect_byuser_provider.g.dart';

@riverpod
class GetConnectionDisconnectByuserProvider
    extends _$GetConnectionDisconnectByuserProvider {
  @override
  FutureOr<List<ConnectionViewEntity>?> build() {
    return null;
  }

  Future<void> getConnectionDisconnectByUser() async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 500));

    final response = await sl<ConnectionRemoteUsecase>()
        .getAllConnectionDisconnectByUser()
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
