import 'dart:convert';

import 'package:to_do_app_flutter/features/ManageProject/data/datasource/project_socket_datasource.dart';
import 'package:to_do_app_flutter/features/ManageProject/data/mapper/project_mapper.dart';
import 'package:to_do_app_flutter/features/ManageProject/data/models/to_do_pointer_model.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_pointer_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/repositories/project_socket_remote_repository.dart';

class ProjectSocketRemoteRepositoryImpl
    implements ProjectSocketRemoteRepository {
  final ProjectSocketDatasource projectSocketDatasource;

  ProjectSocketRemoteRepositoryImpl({required this.projectSocketDatasource});

  @override
  void connectToSocketServer({required int projectId}) {
    // connect to server
    projectSocketDatasource.connectToServer(projectId: projectId);
    print("Success Connect to project id : ${projectId}");
  }

  @override
  Stream<ToDoPointerEntity?> getStreamData() {
    // collect stream data
    final getStreamData = projectSocketDatasource.getRawStream();

    // map stream data
    return getStreamData.map((rawData) {
      // get raw data as string
      final getStrRawData = rawData as String;

      if (getStrRawData.isEmpty) {
        return null;
      }

      // get decoded json
      final decodedJson = jsonDecode(getStrRawData);

      // decode to json
      ToDoPointerModel getToDoModel =
          ToDoPointerModel.fromJson(decodedJson as dynamic);

      // return model as entity
      return ToDoPointerEntity(
          toDoPointerState: getToDoModel.toDoPointerState,
          targetToDoState: getToDoModel.targetToDoState,
          toDoItem: getToDoModel.toDoItem.toEntity());
    });
  }

  @override
  void sendData(ToDoPointerEntity toDoData) {
    // alter the model to json
    Map<String, dynamic> toDoDataJson = toDoData.toJson();

    // encode to json
    final encodeJson = jsonEncode(toDoDataJson);

    // send encoded json data
    projectSocketDatasource.sendData(encodeJson);
  }
}
