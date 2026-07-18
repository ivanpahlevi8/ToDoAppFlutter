import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/usecase/team_usecase.dart';

part 'delete_team_provider.g.dart';

@riverpod
class DeleteTeamProvider extends _$DeleteTeamProvider {
  @override
  FutureOr<String?> build() {
    return null;
  }

  Future<void> deleteTeam({required int teamId}) async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 600));

    final result = await sl<TeamUsecase>().deleteTeam(teamId: teamId).run();

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
