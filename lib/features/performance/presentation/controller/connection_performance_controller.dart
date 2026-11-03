import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/connection_performance_entity.dart';
import 'package:to_do_app_flutter/features/performance/domain/usecase/performance_remote_usecase.dart';

part "connection_performance_controller.g.dart";

@riverpod
class ConnectionPerformanceController
    extends _$ConnectionPerformanceController {
  @override
  FutureOr<ConnectionPerformanceEntity?> build() {
    return null;
  }

  Future<void> getConnectionPerformance() async {
    state = AsyncValue.loading();

    final getData =
        await sl<PerformanceRemoteUsecase>().getConnectionPerformance().run();

    getData.fold((l) {
      state = AsyncValue.error(l.error!, l.stackTrace!);
    }, (r) {
      state = AsyncValue.data(r);
    });
  }
}
