import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/create_team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/usecase/team_usecase.dart';

part 'create_team_provider.g.dart';

@riverpod
class CreateTeamProvider extends _$CreateTeamProvider {
  @override
  FutureOr<TeamEntity?> build() {
    return null;
  }

  Future<void> createTeam({required CreateTeamEntity createTeam}) async {
    state = AsyncValue.loading();

    await Future.delayed(Duration(milliseconds: 600));

    final result = await sl<TeamUsecase>()
        .createTeam(createTeamEntity: createTeam)
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
