import 'package:dartz/dartz.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/features/OnBoarding/domain/repository/on_board_local_repository.dart';

class OnBoardLocalUsecase {
  final OnBoardLocalRepository onBoardLocalRepository;

  OnBoardLocalUsecase({required this.onBoardLocalRepository});

  // function to set user on board
  Future<Either<BaseException, void>> setUserOnBoard() async {
    return await onBoardLocalRepository.setUserOnBoard();
  }

  // function to get user on board status
  Either<BaseException, bool> getUserOnBoardStatus() {
    return onBoardLocalRepository.getUserOnBoardStatus();
  }
}
