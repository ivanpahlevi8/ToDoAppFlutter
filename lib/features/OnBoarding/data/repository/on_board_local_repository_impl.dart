import 'package:dartz/dartz.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/exception/exception_handler.dart';
import 'package:to_do_app_flutter/features/OnBoarding/data/datasource/on_board_local_datasource.dart';
import 'package:to_do_app_flutter/features/OnBoarding/domain/repository/on_board_local_repository.dart';

class OnBoardLocalRepositoryImpl implements OnBoardLocalRepository {
  final ExceptionHandler handler;
  final OnBoardLocalDatasource onBoardLocalDatasource;

  OnBoardLocalRepositoryImpl({
    required this.handler,
    required this.onBoardLocalDatasource,
  });

  @override
  Either<BaseException, bool> getUserOnBoardStatus() {
    try {
      final getStatus = onBoardLocalDatasource.getUserOnBoardStatus();

      return Right(getStatus);
    } catch (error, stackTrace) {
      final exception = handler.handle(error, stackTrace);
      return Left(exception);
    }
  }

  @override
  Future<Either<BaseException, void>> setUserOnBoard() async {
    try {
      final data = await onBoardLocalDatasource.setUserOnBoard();

      return Right(data);
    } catch (error, stackTrace) {
      final exception = handler.handle(error, stackTrace);
      return Left(exception);
    }
  }
}
