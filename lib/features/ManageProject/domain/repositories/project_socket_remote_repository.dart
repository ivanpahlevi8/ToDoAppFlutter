import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_pointer_entity.dart';

abstract interface class ProjectSocketRemoteRepository {
  // create function to connect to socket server
  void connectToSocketServer({required int projectId});

  // create function to get stream data
  Stream<ToDoPointerEntity?> getStreamData();

  // create function to send data
  void sendData(ToDoEntity toDoData);
}
