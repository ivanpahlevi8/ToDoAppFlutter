import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/usecase/team_usecase.dart';

part 'leave_team_provider.g.dart';

@riverpod
class LeaveTeamProvider extends _$LeaveTeamProvider {
  @override
  FutureOr<String?> build() {
    return null;
  }

  Future<void> leaveTeam({required teamId}) async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 600));

    final result = await sl<TeamUsecase>()
        .unAssignUserTeam(userId: "", teamId: teamId)
        .run();

    result.fold(
      (exception) {
        state = AsyncValue.error(exception.error!, exception.stackTrace!);
      },
      (data) {
        state = AsyncValue.data(data);
      },
    );
  }
}
