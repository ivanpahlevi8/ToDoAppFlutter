import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/usecase/connection_remote_usecase.dart';

part 'get_request_connection_touser_provider.g.dart';

@riverpod
class GetRequestConnectionTouserProvider
    extends _$GetRequestConnectionTouserProvider {
  @override
  FutureOr<List<ConnectionViewEntity>?> build() {
    return null;
  }

  Future<void> getConnectionToUser() async {
    // set state to laoding
    state = AsyncValue.loading();

    // get result
    final response = await sl<ConnectionRemoteUsecase>()
        .getRequestConnectionToUser()
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
