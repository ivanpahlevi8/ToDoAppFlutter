import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_list_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/usecase/team_usecase.dart';

part 'get_teams_byuserid_provider.g.dart';

@riverpod
class GetTeamsByuseridProvider extends _$GetTeamsByuseridProvider {
  @override
  FutureOr<List<TeamListViewEntity>?> build() {
    return null;
  }

  Future<void> getTeamsByUserId() async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 600));

    final result = await sl<TeamUsecase>().getAllTeamByUserId().run();

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
