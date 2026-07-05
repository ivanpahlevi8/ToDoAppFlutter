import 'package:fpdart/src/task_either.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app_flutter/core/exception/base_exception.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/ManageConnections/data/datasource/connection_remote_datasource.dart';
import 'package:to_do_app_flutter/features/ManageConnections/data/mappers/register_mapper.dart';
import 'package:to_do_app_flutter/features/ManageConnections/data/models/connection_model.dart';
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
      List<TaskEither<BaseException, ConnectionViewEntity>> dataFinal = [];

      // get user for each response
      for (var i = 0; i < response.result!.length; i++) {
        final itemData = response.result![i];

        // get user
        final responseUser = connectionRemoteDatasource.getUserById(
          userId: itemData.userConnectionId,
        );

        // add task either to the list, for being executed later
        dataFinal.add(
          responseUser.flatMap<ConnectionViewEntity>((responseMapped) {
            // get user data
            UserModel getUser = responseMapped.result!;

            // create result entiti
            ConnectionViewEntity connectionViewEntity = ConnectionViewEntity(
              connectionEntity: itemData.toEntity(),
              userModel: getUser,
            );

            if (!responseMapped.isSuccess) {
              return TaskEither.left(
                BaseException(
                  message: "Error : ${responseMapped.message}",
                  stackTrace: StackTrace.current,
                  error: responseMapped.message,
                ),
              );
            }

            return TaskEither.right(connectionViewEntity);
          }),
        );
      }
      /**
       * INFO
       * flatmap digunakan jika ingin melakukan pengembalian objet berupa TaskEither.
       * Dalam hal ini, digunakan untuk melakukan pengecekan apakah nilai yang dikembalikan
       * sudah benar atau belum dengan melakukan pengecekan terhadap response.isSuccess
       * 
       * Jika ingin mengembalikan object secara langsung, tanpa melakukan pengecekan
       * dan berharap nilai success, dapat menggunakan map. Pada map tidak mengembalikan
       * TaskEither tetapi object langsung, atau dalam hal lain TaskEither.right(object)
       * Tidak ada pengembalian nilai TaskEither.left -> contoh menggunakan map:
       * final mappedResult = responseUser.map((userModel) {
          // We create a RAW object
          ConnectionViewEntity entity = ConnectionViewEntity(user: userModel);
          
          // We return a RAW object
          return entity; 
        });
       */

      // squenced list is used to execute all task either within the list and return
      // the task either with right value of model that being passed which in this
      // case is ConnectionViewEntity
      // all the list of task will be executed pararel after this being returned
      return TaskEither.sequenceList<BaseException, ConnectionViewEntity>(
        dataFinal,
      );
    });
  }

  @override
  TaskEither<BaseException, List<ConnectionViewEntity>>
  getRequestConnectionToUser() {
    // get login user id
    String loginUserId = sharedPreferences.getString("user_id") ?? "";

    // get requested connection to login user
    final requestedConnectionResponse = connectionRemoteDatasource
        .getAllConnectionToUser(loginUserId: loginUserId);

    // flat mapt the response, to check is request success or not
    return requestedConnectionResponse.flatMap((dataResponse) {
      // check response weather success or not
      if (!dataResponse.isSuccess || dataResponse.result == null) {
        return TaskEither.left(
          BaseException(
            message: "Error Happen : ${dataResponse.message}",
            error: dataResponse.message,
            stackTrace: StackTrace.current,
          ),
        );
      }

      // get all connection data
      List<ConnectionModel> allConnection = dataResponse.result!;

      // create list of Task Either to be executed later
      List<TaskEither<BaseException, ConnectionViewEntity>> allExecutedTask =
          [];

      // loop through all connection data
      for (int i = 0; i < allConnection.length; i++) {
        // get connection model
        ConnectionModel getConnection = allConnection[i];

        // get user model for connection
        final responseGetUser = connectionRemoteDatasource.getUserById(
          userId: getConnection.userOwnerId,
        );

        // flat map the response
        allExecutedTask.add(
          responseGetUser.flatMap((userDataResponse) {
            // check response status
            if (!userDataResponse.isSuccess ||
                userDataResponse.result == null) {
              return TaskEither.left(
                BaseException(
                  message: "Error Happen : ${userDataResponse.message}",
                  error: userDataResponse.message,
                  stackTrace: StackTrace.current,
                ),
              );
            }

            // get user model
            UserModel getUserModel = userDataResponse.result!;

            // return connection view entity
            return TaskEither.right(
              ConnectionViewEntity(
                connectionEntity: getConnection.toEntity(),
                userModel: getUserModel,
              ),
            );
          }),
        );
      }

      // return sequenced data
      return TaskEither.sequenceList<BaseException, ConnectionViewEntity>(
        allExecutedTask,
      );
    });
  }
}
