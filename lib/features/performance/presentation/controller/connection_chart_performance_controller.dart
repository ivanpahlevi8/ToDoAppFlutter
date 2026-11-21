import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/connection_chart_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/usecase/performance_remote_usecase.dart';

part 'connection_chart_performance_controller.g.dart';

@riverpod
class ConnectionChartPerformanceController
    extends _$ConnectionChartPerformanceController {
  @override
  FutureOr<ConnectionChartPerformanceEntity?> build() {
    return null;
  }

  Future<void> getConnectionChartPerformance({required int year}) async {
    state = AsyncValue.loading();

    final getData = await sl<PerformanceRemoteUsecase>()
        .getConnectionChartPerformance(year: year)
        .run();

    getData.fold((l) {
      state = AsyncValue.error(l.error!, l.stackTrace!);
    }, (r) {
      state = AsyncValue.data(r);
    });
  }
}
