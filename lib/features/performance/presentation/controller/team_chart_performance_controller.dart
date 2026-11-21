import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/team_chart_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/usecase/performance_remote_usecase.dart';

part 'team_chart_performance_controller.g.dart';

@riverpod
class TeamChartPerformanceController extends _$TeamChartPerformanceController {
  @override
  FutureOr<TeamChartPerformanceEntity?> build() {
    return null;
  }

  Future<void> getTeamChartPerformance({required int year}) async {
    state = AsyncValue.loading();

    final getData = await sl<PerformanceRemoteUsecase>()
        .getTeamChartPerformance(year: year)
        .run();

    getData.fold((l) {
      state = AsyncValue.error(l.error!, l.stackTrace!);
    }, (r) {
      state = AsyncValue.data(r);
    });
  }
}
