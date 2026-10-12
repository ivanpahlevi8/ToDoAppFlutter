import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/project_summary_entity.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/usecase/dashboard_usecase.dart';

part 'project_summary_controller.g.dart';

@riverpod
class ProjectSummaryController extends _$ProjectSummaryController {
  @override
  FutureOr<ProjectSummaryEntity?> build() {
    return null;
  }

  // get project summary dashboard
  Future<void> getProjectSummaryDashboard() async {
    // update state to loading
    state = AsyncValue.loading();

    // get project summary
    final getProjectSummary =
        await sl<DashboardUsecase>().getProjectSummary().run();

    getProjectSummary.fold((l) {
      state = AsyncValue.error(l.error!, l.stackTrace!);
    }, (r) {
      state = AsyncValue.data(r);
    });
  }
}
