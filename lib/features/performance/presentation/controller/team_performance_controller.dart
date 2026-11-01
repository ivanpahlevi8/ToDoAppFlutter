import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/team_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/usecase/performance_remote_usecase.dart';

part 'team_performance_controller.g.dart';

@riverpod
class TeamPerformanceController extends _$TeamPerformanceController {
  @override
  FutureOr<TeamPerformanceEntity?> build() {
    return null;
  }

  Future<void> getTeamPerformance() async {
    state = AsyncValue.loading();

    final result =
        await sl<PerformanceRemoteUsecase>().getTeamPerformance().run();

    result.fold((l) {
      state = AsyncValue.error(l.error!, l.stackTrace!);
    }, (r) {
      state = AsyncValue.data(r);
    });
  }
}
