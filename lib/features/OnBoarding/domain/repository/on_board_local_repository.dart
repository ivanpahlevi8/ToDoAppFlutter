import 'package:dartz/dartz.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';

abstract interface class OnBoardLocalRepository {
  // function to set user on board
  Future<Either<BaseException, void>> setUserOnBoard();

  // function to get user on board status
  Either<BaseException, bool> getUserOnBoardStatus();
}
