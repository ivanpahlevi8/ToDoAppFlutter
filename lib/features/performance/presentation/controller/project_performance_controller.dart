import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/project_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/usecase/performance_remote_usecase.dart';

part 'project_performance_controller.g.dart';

@riverpod
class ProjectPerformanceController extends _$ProjectPerformanceController {
  @override
  FutureOr<ProjectPerformanceEntity?> build() {
    return null;
  }

  Future<void> getProjectPerformance() async {
    state = AsyncValue.loading();

    final getData =
        await sl<PerformanceRemoteUsecase>().getProjectPerformance().run();

    getData.fold((l) {
      state = AsyncValue.error(l.error!, l.stackTrace!);
    }, (r) {
      state = AsyncValue.data(r);
    });
  }
}
