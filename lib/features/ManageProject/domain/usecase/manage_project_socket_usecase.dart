import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_pointer_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/repositories/project_socket_remote_repository.dart';

class ManageProjectSocketUsecase {
  // get instance of project socket repository
  final ProjectSocketRemoteRepository projectSocketRepository;

  ManageProjectSocketUsecase({required this.projectSocketRepository});

  // create function to connect to the socket server
  void connectTOSocketServer({required int projectId}) {
    projectSocketRepository.connectToSocketServer(projectId: projectId);
  }

  // function to get stream data
  Stream<ToDoPointerEntity?> getSocketStream() {
    return projectSocketRepository.getStreamData();
  }

  // function to send stream data
  void sendStreamData({required ToDoEntity toDoEntity}) {
    return projectSocketRepository.sendData(toDoEntity);
  }
}
