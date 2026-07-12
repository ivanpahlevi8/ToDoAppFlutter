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

  @override
  TaskEither<BaseException, ConnectionViewEntity> removeConnection({
    required int connectionId,
  }) {
    // do request to remove user
    final response = connectionRemoteDatasource.removeConnection(
      connectionId: connectionId,
    );

    // flat mapt the response to check is request success on server or not
    return response.flatMap((responseData) {
      if (!responseData.isSuccess || responseData.result == null) {
        return TaskEither.left(
          BaseException(
            message: "Error Happen : ${responseData.message}",
            error: responseData.message,
            stackTrace: StackTrace.current,
          ),
        );
      }

      // get connection from user
      ConnectionModel getConnection = responseData.result!;

      // do request to get user from connection
      final getUserResponse = connectionRemoteDatasource.getUserById(
        userId: getConnection.userConnectionId,
      );

      // flat map the user response to check weather the operation success or not
      return getUserResponse.flatMap((userResponse) {
        if (!userResponse.isSuccess || userResponse.result == null) {
          return TaskEither.left(
            BaseException(
              message: "Error Happen : ${userResponse.message}",
              error: userResponse.message,
              stackTrace: StackTrace.current,
            ),
          );
        }

        // get user model result
        UserModel getUserModel = userResponse.result!;

        // create connection view
        ConnectionViewEntity connectionViewEntity = ConnectionViewEntity(
          connectionEntity: getConnection.toEntity(),
          userModel: getUserModel,
        );

        // return success
        return TaskEither.right(connectionViewEntity);
      });
    });
  }

  @override
  TaskEither<BaseException, ConnectionViewEntity> declineConnection({
    required int connectionId,
  }) {
    // do request to decline the connection
    final declineConnectionResponse = connectionRemoteDatasource
        .declineConnection(connectionId: connectionId);

    // flat map the response to check server response
    return declineConnectionResponse.flatMap((connectionResponse) {
      if (!connectionResponse.isSuccess || connectionResponse.result == null) {
        return TaskEither.left(
          BaseException(
            message: "Error Happen : ${connectionResponse.message}",
            error: connectionResponse.message,
            stackTrace: StackTrace.current,
          ),
        );
      }

      // get connection model
      ConnectionModel getConnection = connectionResponse.result!;

      // get user from connection response
      final getUserResponse = connectionRemoteDatasource.getUserById(
        userId: getConnection.userOwnerId,
      );

      // map the get user response to check the server status return
      return getUserResponse.flatMap((userResponse) {
        if (!userResponse.isSuccess || userResponse.result == null) {
          return TaskEither.left(
            BaseException(
              message: "Error Happen : ${userResponse.message}",
              error: userResponse.message,
              stackTrace: StackTrace.current,
            ),
          );
        }

        // get user model
        UserModel getUser = userResponse.result!;

        // create connection view
        ConnectionViewEntity connectionView = ConnectionViewEntity(
          connectionEntity: getConnection.toEntity(),
          userModel: getUser,
        );

        // return success
        return TaskEither.right(connectionView);
      });
    });
  }

  @override
  TaskEither<BaseException, ConnectionViewEntity> acceptConnection({
    required int connectionId,
  }) {
    // accept connection and retrieve connection response
    final acceptConnectionResponse = connectionRemoteDatasource
        .acceptConnection(connectionId: connectionId);

    return acceptConnectionResponse.flatMap((acceptConnection) {
      if (!acceptConnection.isSuccess || acceptConnection.result == null) {
        return TaskEither.left(
          BaseException(
            error: acceptConnection.message,
            message: "Error happen : ${acceptConnection.message}",
            stackTrace: StackTrace.current,
          ),
        );
      }

      ConnectionModel getConnectionResponse = acceptConnection.result!;

      final getUserResponse = connectionRemoteDatasource.getUserById(
        userId: getConnectionResponse.userConnectionId,
      );

      return getUserResponse.flatMap((getUser) {
        if (!getUser.isSuccess || getUser.result == null) {
          return TaskEither.left(
            BaseException(
              error: getUser.message,
              message: "Error happen : ${getUser.message}",
              stackTrace: StackTrace.current,
            ),
          );
        }

        UserModel userModel = getUser.result!;

        return TaskEither.right(
          ConnectionViewEntity(
            connectionEntity: getConnectionResponse.toEntity(),
            userModel: userModel,
          ),
        );
      });
    });
  }

  @override
  TaskEither<BaseException, List<ConnectionViewEntity>>
  getAllRequestConnectionRejectByUser() {
    // get current login user
    String loggedinUser = sharedPreferences.getString("user_id") ?? "";

    // get all connection
    final allConnectionResponse = connectionRemoteDatasource
        .getRequestConnectionRejectByUser(userId: loggedinUser);

    // check connection response status from server
    return allConnectionResponse.flatMap((allConnection) {
      if (!allConnection.isSuccess || allConnection.result == null) {
        return TaskEither.left(
          BaseException(
            error: allConnection.message,
            message: "Error happen : ${allConnection.message}",
            stackTrace: StackTrace.current,
          ),
        );
      }

      // get all connection
      final getAllConnection = allConnection.result!;

      // create empty list to hold task either for being executed later
      List<TaskEither<BaseException, ConnectionViewEntity>> processExceuted =
          [];

      // loop through all connection
      for (int j = 0; j < getAllConnection.length; j++) {
        // get single connection
        ConnectionModel singleConnection = getAllConnection[j];

        // get user model
        final getUserModelResponse = connectionRemoteDatasource.getUserById(
          userId: singleConnection.userOwnerId,
        );

        // check response
        processExceuted.add(
          getUserModelResponse.flatMap((getUser) {
            if (!getUser.isSuccess || getUser.result == null) {
              return TaskEither.left(
                BaseException(
                  error: getUser.message,
                  message: "Error happen : ${getUser.message}",
                  stackTrace: StackTrace.current,
                ),
              );
            }

            final getSingleUser = getUser.result!;

            return TaskEither.right(
              ConnectionViewEntity(
                connectionEntity: singleConnection.toEntity(),
                userModel: getSingleUser,
              ),
            );
          }),
        );
      }

      // executed
      return TaskEither.sequenceList<BaseException, ConnectionViewEntity>(
        processExceuted,
      );
    });
  }

  @override
  TaskEither<BaseException, List<ConnectionViewEntity>> getAllConnectionUser() {
    // get login user id
    final getUserId = sharedPreferences.getString("user_id") ?? "";

    // do request
    final responseGetConnections = connectionRemoteDatasource
        .getAllConnectionUser(userId: getUserId);

    return responseGetConnections.flatMap((connectionsResponse) {
      if (!connectionsResponse.isSuccess ||
          connectionsResponse.result == null) {
        return TaskEither.left(
          BaseException(
            error: connectionsResponse.message,
            message: "Error Happen : ${connectionsResponse.message}",
            stackTrace: StackTrace.current,
          ),
        );
      }

      // get connections
      List<ConnectionModel> allConnections = connectionsResponse.result!;

      List<TaskEither<BaseException, ConnectionViewEntity>> executedTask = [];

      allConnections.map((connection) {
        // get user from task
        String userId = (connection.userOwnerId == getUserId)
            ? connection.userConnectionId
            : connection.userOwnerId;

        final getUserResponse = connectionRemoteDatasource.getUserById(
          userId: userId,
        );

        executedTask.add(
          getUserResponse.flatMap((getUser) {
            if (!getUser.isSuccess || getUser.result == null) {
              return TaskEither.left(
                BaseException(
                  error: getUser.message,
                  message: "Error Happen : ${getUser.message}",
                  stackTrace: StackTrace.current,
                ),
              );
            }

            UserModel getUserModel = getUser.result!;

            return TaskEither.right(
              ConnectionViewEntity(
                connectionEntity: connection.toEntity(),
                userModel: getUserModel,
              ),
            );
          }),
        );
      }).toList();
      // to list digunakan untuk menjalankan map langsung, not after this code

      return TaskEither.sequenceList<BaseException, ConnectionViewEntity>(
        executedTask,
      );
    });
  }

  @override
  TaskEither<BaseException, ConnectionViewEntity> disconnectConnection({
    required int connectionId,
  }) {
    // get user id
    String loginUserId = sharedPreferences.getString("user_id") ?? "";

    // do request
    final disconnectResponse = connectionRemoteDatasource.disconnectConnection(
      connectionId: connectionId,
    );

    return disconnectResponse.flatMap((disconnectResult) {
      if (!disconnectResult.isSuccess || disconnectResult.result == null) {
        return TaskEither.left(
          BaseException(
            error: disconnectResult.message,
            message: "Error Happen : ${disconnectResult.message}",
            stackTrace: StackTrace.current,
          ),
        );
      }

      // get connection
      ConnectionModel getConnection = disconnectResult.result!;

      // get user
      String getUserId = (loginUserId == getConnection.userOwnerId)
          ? getConnection.userConnectionId
          : getConnection.userOwnerId;

      final userResponse = connectionRemoteDatasource.getUserById(
        userId: getUserId,
      );

      return userResponse.flatMap((userResult) {
        if (!userResult.isSuccess || userResult.result == null) {
          return TaskEither.left(
            BaseException(
              error: userResult.message,
              message: "Error Happen When Getting User : ${userResult.message}",
              stackTrace: StackTrace.current,
            ),
          );
        }

        UserModel getUserModel = userResult.result!;

        return TaskEither.right(
          ConnectionViewEntity(
            connectionEntity: getConnection.toEntity(),
            userModel: getUserModel,
          ),
        );
      });
    });
  }

  @override
  TaskEither<BaseException, List<ConnectionViewEntity>>
  getDisconnectConnectionByOther() {
    // get login user id
    String getLoginUserId = sharedPreferences.getString("user_id") ?? "";

    // get response
    final getAllConnectionResponse = connectionRemoteDatasource
        .getConnectionDisconnectByOther(userId: getLoginUserId);

    return getAllConnectionResponse.flatMap((allConnections) {
      if (!allConnections.isSuccess || allConnections.result == null) {
        return TaskEither.left(
          BaseException(
            error: allConnections..message,
            message: "Error happen : ${allConnections.message}",
            stackTrace: StackTrace.current,
          ),
        );
      }

      // get all connection
      List<ConnectionModel> getAllConnection = allConnections.result!;

      List<TaskEither<BaseException, ConnectionViewEntity>> executedTasks = [];

      getAllConnection.map((connection) {
        // get user
        String getUserId = (getLoginUserId == connection.userConnectionId)
            ? connection.userOwnerId
            : connection.userConnectionId;

        final getUserResponse = connectionRemoteDatasource.getUserById(
          userId: getUserId,
        );

        executedTasks.add(
          getUserResponse.flatMap((userData) {
            if (!userData.isSuccess || userData.result == null) {
              return TaskEither.left(
                BaseException(
                  error: "Error happen when getting user : ${userData.message}",
                  message: userData.message,
                  stackTrace: StackTrace.current,
                ),
              );
            }

            UserModel userDataResult = userData.result!;

            return TaskEither.right(
              ConnectionViewEntity(
                connectionEntity: connection.toEntity(),
                userModel: userDataResult,
              ),
            );
          }),
        );
      }).toList();

      return TaskEither.sequenceList<BaseException, ConnectionViewEntity>(
        executedTasks,
      );
    });
  }
}
