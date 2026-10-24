import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/connection_summary_entity.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/usecase/dashboard_usecase.dart';

part 'connection_summary_controller.g.dart';

@riverpod
class ConnectionSummaryController extends _$ConnectionSummaryController {
  @override
  FutureOr<ConnectionSummaryEntity?> build() {
    return null;
  }

  Future<void> getConnectionSummary() async {
    state = AsyncValue.loading();

    final result = await sl<DashboardUsecase>().getConnectionSummary().run();

    result.fold((exception) {
      state = AsyncValue.error(exception.error!, exception.stackTrace!);
    }, (data) {
      state = AsyncValue.data(data);
    });
  }
}
