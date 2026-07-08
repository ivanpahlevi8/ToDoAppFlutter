import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/usecase/connection_remote_usecase.dart';

part 'get_request_connection_reject_byuser_provider.g.dart';

@riverpod
class GetRequestConnectionRejectByuserProvider
    extends _$GetRequestConnectionRejectByuserProvider {
  @override
  FutureOr<List<ConnectionViewEntity>?> build() {
    return null;
  }

  // function to get all connection
  Future<void> getAllConnectionRejectByUser() async {
    state = AsyncValue.loading();

    final response = await sl<ConnectionRemoteUsecase>()
        .getAllRequestConnectionRejectByUser()
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
