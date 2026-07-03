import 'package:fpdart/src/task_either.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/ManageConnections/data/datasource/connection_remote_datasource.dart';
import 'package:to_do_app_flutter/features/ManageConnections/data/mappers/register_mapper.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/repositories/connection_remote_repository.dart';

class ConnectionRemoteRepositoryImpl implements ConnectionRemoteRepository {
  final ConnectionRemoteDatasource connectionRemoteDatasource;
  final SharedPreferences sharedPreferences;

  ConnectionRemoteRepositoryImpl({
    required this.connectionRemoteDatasource,
    required this.sharedPreferences,
  });

  @override
  TaskEither<BaseException, List<ConnectionViewEntity>>
  getRequestConnectionByUser() {
    print(
      "Start get connection... from user id : (${sharedPreferences.getString("user_id") ?? "No User Id"})",
    );
    final responseRaw = connectionRemoteDatasource
        .getAllConnectionRequestByUser(
          loginUserId: sharedPreferences.getString("user_id") ?? "",
        );

    return responseRaw.flatMap((response) {
      if (!response.isSuccess || response.result == null) {
        return TaskEither.left(
          BaseException(
            message: response.message,
            error: "API success flag was false or response result was null.",
            stackTrace: StackTrace.current,
          ),
        );
      }
      print("Finish get connection and start get data final...");
      List<TaskEither<BaseException, ConnectionViewEntity>> dataFinal = [];

      // get user for each response
      for (var i = 0; i < response.result!.length; i++) {
        print("Try to get user data at ${i + 1}");
        final itemData = response.result![i];

        // get user
        final responseUser = connectionRemoteDatasource.getUserById(
          userId: itemData.userConnectionId,
        );

        responseUser.map((response) {
          if (!response.isSuccess) {
            return TaskEither.left(
              BaseException(
                message: response.message,
                error:
                    "API success flag was false or response result was null.",
                stackTrace: StackTrace.current,
              ),
            );
          }
        });

        dataFinal.add(
          responseUser.map<ConnectionViewEntity>((responseMapped) {
            // get user data
            UserModel getUser = responseMapped.result!;

            // create result entiti
            ConnectionViewEntity connectionViewEntity = ConnectionViewEntity(
              connectionEntity: itemData.toEntity(),
              userModel: getUser,
            );

            return connectionViewEntity;
          }),
        );
      }

      print("Finish getget data final...");

      return TaskEither.sequenceList<BaseException, ConnectionViewEntity>(
        dataFinal,
      );
    });
  }
}
