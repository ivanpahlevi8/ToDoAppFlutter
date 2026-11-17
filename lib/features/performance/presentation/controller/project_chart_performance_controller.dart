import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/project_chart_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/usecase/performance_remote_usecase.dart';

part 'project_chart_performance_controller.g.dart';

@riverpod
class ProjectChartPerformanceController
    extends _$ProjectChartPerformanceController {
  @override
  FutureOr<ProjectChartPerformanceEntity?> build() {
    return null;
  }

  Future<void> getProjectChartPerformance({required int year}) async {
    state = AsyncValue.loading();

    // get data
    final getData = await sl<PerformanceRemoteUsecase>()
        .getProjectChartPerformance(year: year)
        .run();

    getData.fold((l) {
      state = AsyncValue.error(l.error!, l.stackTrace!);
    }, (r) {
      state = AsyncValue.data(r);
    });
  }
}
