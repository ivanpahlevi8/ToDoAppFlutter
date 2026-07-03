import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/usecase/connection_remote_usecase.dart';

part 'get_request_connection _byuser_provider.g.dart';

@riverpod
class GetRequestConnectionByuserProvider
    extends _$GetRequestConnectionByuserProvider {
  @override
  FutureOr<List<ConnectionViewEntity>?> build() async {
    return null;
  }

  Future<void> getRequestConnectionByUser() async {
    print("Update state into loading state on provider");
    state = AsyncValue.loading();

    final response = await sl<ConnectionRemoteUsecase>()
        .getRequestConnectionByUser()
        .run();

    print("Finish get data in provider...");

    state = response.fold(
      (exception) {
        print("Check on error : ${exception.message}");
        return AsyncValue.error(exception.message!, exception.stackTrace!);
      },
      (data) {
        return AsyncValue.data(data);
      },
    );
  }
}
