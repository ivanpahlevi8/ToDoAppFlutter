import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/usecase/team_usecase.dart';

part 'assign_user_team_provider.g.dart';

@riverpod
class AssignUserTeamProvider extends _$AssignUserTeamProvider {
  @override
  FutureOr<UserModel?> build() {
    return null;
  }

  Future<void> assigUserToTeam({
    required String userId,
    required int teamId,
    required int teamRoleId,
  }) async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 500));

    final result = await sl<TeamUsecase>()
        .assignUserToTeam(
          userId: userId,
          teamId: teamId,
          teamRoleId: teamRoleId,
        )
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
