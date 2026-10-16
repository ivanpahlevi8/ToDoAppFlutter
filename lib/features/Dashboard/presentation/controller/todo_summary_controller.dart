import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/todo_summary_entity.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/usecase/dashboard_usecase.dart';

part 'todo_summary_controller.g.dart';

@riverpod
class ToDoSummaryController extends _$ToDoSummaryController {
  @override
  FutureOr<ToDoSummaryEntity?> build() {
    return null;
  }

  Future<void> getToDoSummaryDashboard() async {
    state = AsyncValue.loading();

    final response = await sl<DashboardUsecase>().getToDoSummary().run();

    response.fold((error) {
      state = AsyncValue.error(error, StackTrace.current);
    }, (data) {
      state = AsyncValue.data(data);
    });
  }
}
