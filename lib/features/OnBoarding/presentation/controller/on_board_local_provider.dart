import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/OnBoarding/domain/usecase/on_board_local_usecase.dart';

part 'on_board_local_provider.g.dart';

@riverpod
class OnBoardLocalProvider extends _$OnBoardLocalProvider {
  @override
  FutureOr<bool> build() {
    final isUserOnBoard = sl<OnBoardLocalUsecase>().getUserOnBoardStatus();

    return isUserOnBoard.fold(
      (exception) {
        // If there's an error, default to false (show onboarding to be safe)
        return false;
      },
      (data) {
        // 'data' is the boolean flag from SharedPreferences (true if done)
        return data;
      },
    );
  }

  // create function to set user on board
  Future<void> setUserOnBoard() async {
    state = AsyncValue.loading();

    final response = await sl<OnBoardLocalUsecase>().setUserOnBoard();

    state = response.fold(
      (error) {
        return AsyncValue.error(error.error!, error.stackTrace!);
      },
      (_) {
        return AsyncValue.data(true);
      },
    );
  }
}
