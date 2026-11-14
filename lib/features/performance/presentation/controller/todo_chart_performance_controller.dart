import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/todo_chart_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/usecase/performance_remote_usecase.dart';

part 'todo_chart_performance_controller.g.dart';

@riverpod
class ToDoChartPerformanceController extends _$ToDoChartPerformanceController {
  @override
  FutureOr<ToDoChartPerformanceEntity?> build() {
    return null;
  }

  Future<void> getToDoChartPerformanceChart({required int year}) async {
    state = AsyncValue.loading();

    // get data
    final getData = await sl<PerformanceRemoteUsecase>()
        .getToDoChartPerformance(year: year)
        .run();

    getData.fold((l) {
      state = AsyncValue.error(l.error!, l.stackTrace!);
    }, (r) {
      state = AsyncValue.data(r);
    });
  }
}
