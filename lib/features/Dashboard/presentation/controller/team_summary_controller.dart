import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/team_summary_entity.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/usecase/dashboard_usecase.dart';

part 'team_summary_controller.g.dart';

@riverpod
class TeamSummaryController extends _$TeamSummaryController {
  @override
  FutureOr<TeamSummaryEntity?> build() {
    return null;
  }

  Future<void> getTeamSummaryDashboard() async {
    state = AsyncValue.loading();

    final response = await sl<DashboardUsecase>().getTeamSummary().run();

    response.fold((e) {
      state = AsyncValue.error(e.error!, e.stackTrace!);
    }, (r) {
      state = AsyncValue.data(r);
    });
  }
}
