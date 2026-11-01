import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/todo_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/usecase/performance_remote_usecase.dart';

part 'todo_performance_controller.g.dart';

@riverpod
class ToDoPerformanceController extends _$ToDoPerformanceController {
  @override
  FutureOr<ToDoPerformanceEntity?> build() {
    return null;
  }

  Future<void> getToDoPerformanceController() async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 500));

    final getData =
        await sl<PerformanceRemoteUsecase>().getToDoPerformance().run();

    getData.fold((l) {
      state = AsyncValue.error(l.error!, l.stackTrace!);
    }, (r) {
      state = AsyncValue.data(r);
    });
  }
}
