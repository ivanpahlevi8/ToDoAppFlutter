import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_list_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/usecase/team_usecase.dart';

part 'get_team_detail_provider.g.dart';

@riverpod
class GetTeamDetailProvider extends _$GetTeamDetailProvider {
  @override
  FutureOr<TeamListViewEntity?> build() {
    return null;
  }

  Future<void> getTeamDetail({required int teamId}) async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 500));

    final result = await sl<TeamUsecase>().getTeamDetail(teamId: teamId).run();

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
