import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/core/services/service_locator.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_pointer_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/usecase/manage_project_socket_usecase.dart';

// create class for data
class ToDoPointerData {
  final List<int> grabbed;
  final List<ToDoPointerEntity> createdToDo;
  final List<ToDoPointerEntity> onGoingToDo;
  final List<ToDoPointerEntity> doneToDO;

  ToDoPointerData(
      {required this.grabbed,
      required this.createdToDo,
      required this.onGoingToDo,
      required this.doneToDO});
}

class ToDoState {
  final String status;
  final ToDoPointerData data;

  const ToDoState({required this.status, required this.data});
}

class ToDoNotifier extends StateNotifier<ToDoState> {
  StreamSubscription? streamSubs;

  ToDoNotifier()
      : super(ToDoState(
            status: "connecting",
            data: ToDoPointerData(
                createdToDo: [], onGoingToDo: [], doneToDO: [], grabbed: [])));

  void initDataStream(List<ToDoEntity> initialData) {
    // get current state
    ToDoPointerData currState = state.data;

    // loop through all initial data
    for (var element in initialData) {
      // check for element status
      switch (element.toDoState) {
        case "CREATED_TO_DO":
          // created to do target, add new to do to created
          currState.createdToDo.add(ToDoPointerEntity(
              toDoPointerState: "", targetToDoState: "", toDoItem: element));
          break;
        case "PROCESSED_TO_DO":
          // processed to do target, add new to do to processed
          currState.onGoingToDo.add(ToDoPointerEntity(
              toDoPointerState: "", targetToDoState: "", toDoItem: element));
          break;
        case "FINISHED_TO_DO":
          // process finish to do
          currState.doneToDO.add(ToDoPointerEntity(
              toDoPointerState: "", targetToDoState: "", toDoItem: element));
          break;
      }
    }

    // update the state
    state = ToDoState(status: "connecting", data: currState);

    streamSubs = sl<ManageProjectSocketUsecase>().getSocketStream().listen(
      (toDoPointer) {
        print("incoming....");
        // check on message
        if (toDoPointer != null) {
          // check what state is being doing, is this dropping dragging or else
          switch (toDoPointer.toDoPointerState) {
            case "GRABBED":
              print("Grabbed");
              // grabbed case, update state
              final getCurrentGrabbed = List<int>.from(state.data.grabbed)
                ..add(toDoPointer.toDoItem.toDoId);

              // update state
              state = ToDoState(
                  status: "connected",
                  data: ToDoPointerData(
                      createdToDo: state.data.createdToDo,
                      onGoingToDo: state.data.onGoingToDo,
                      doneToDO: state.data.doneToDO,
                      grabbed: getCurrentGrabbed));
              break;
            case "DROPPEPD":
              // dropped case
              final getCurrentGrabbed = List<int>.from(state.data.grabbed);

              // append grabbed
              getCurrentGrabbed.removeWhere(
                  (element) => element == toDoPointer.toDoItem.toDoId);

              // get copied of three state data
              var getOnCreated =
                  List<ToDoPointerEntity>.from(state.data.createdToDo);
              var getOnGoing =
                  List<ToDoPointerEntity>.from(state.data.onGoingToDo);
              var getOnFinished =
                  List<ToDoPointerEntity>.from(state.data.doneToDO);

              // on dropped, remove todo on every state
              getOnCreated.removeWhere((element) =>
                  element.toDoItem.toDoId == toDoPointer.toDoItem.toDoId);
              getOnGoing.removeWhere((element) =>
                  element.toDoItem.toDoId == toDoPointer.toDoItem.toDoId);
              getOnFinished.removeWhere((element) =>
                  element.toDoItem.toDoId == toDoPointer.toDoItem.toDoId);

              // on dropped, after removing, assign new position based on position
              switch (toDoPointer.targetToDoState) {
                case "CREATED_TO_DO":
                  // created to do target, add new to do to created
                  getOnCreated.add(toDoPointer);
                  break;
                case "PROCESSED_TO_DO":
                  // processed to do target, add new to do to processed
                  getOnGoing.add(toDoPointer);
                  break;
                case "FINISHED_TO_DO":
                  // process finish to do
                  getOnFinished.add(toDoPointer);
                  break;
              }

              // update state
              state = ToDoState(
                  status: "connected",
                  data: ToDoPointerData(
                      createdToDo: getOnCreated,
                      onGoingToDo: getOnGoing,
                      doneToDO: getOnFinished,
                      grabbed: getCurrentGrabbed));
              break;
            case "RELEASED":
              // released case
              final getCurrentGrabbed = state.data.grabbed;

              // append grabbed
              getCurrentGrabbed.remove(toDoPointer);

              // update state
              state = ToDoState(
                  status: "connected",
                  data: ToDoPointerData(
                      createdToDo: state.data.createdToDo,
                      onGoingToDo: state.data.onGoingToDo,
                      doneToDO: state.data.doneToDO,
                      grabbed: getCurrentGrabbed));
              break;
            case "CREATED":
              print(
                  "Check on current created to do : ${state.data.createdToDo.length}");
              // created case
              final getUpdateCreatedToDo =
                  List<ToDoPointerEntity>.from(state.data.createdToDo)
                    ..add(toDoPointer);

              print(
                  "Check after being addedd : ${state.data.createdToDo.length}");

              // update state
              state = ToDoState(
                  status: "connected",
                  data: ToDoPointerData(
                      createdToDo: getUpdateCreatedToDo,
                      onGoingToDo: state.data.onGoingToDo,
                      doneToDO: state.data.doneToDO,
                      grabbed: state.data.grabbed));
              break;
            case "DELETED":
              // deleted case
              final updateCreatedToDo =
                  List<ToDoPointerEntity>.from(state.data.createdToDo);
              updateCreatedToDo.removeWhere((element) =>
                  element.toDoItem.toDoId == toDoPointer.toDoItem.toDoId);

              final updatedOnGoingToDo =
                  List<ToDoPointerEntity>.from(state.data.onGoingToDo);
              updatedOnGoingToDo.removeWhere((element) =>
                  element.toDoItem.toDoId == toDoPointer.toDoItem.toDoId);

              final updatedDoneToDo =
                  List<ToDoPointerEntity>.from(state.data.doneToDO);
              updatedDoneToDo.removeWhere((element) =>
                  element.toDoItem.toDoId == toDoPointer.toDoItem.toDoId);

              final updatedGrabbed = List<int>.from(state.data.grabbed);
              updatedGrabbed.removeWhere(
                  (element) => element == toDoPointer.toDoItem.toDoId);

              state = ToDoState(
                  status: "connected",
                  data: ToDoPointerData(
                      createdToDo: updateCreatedToDo,
                      onGoingToDo: updatedOnGoingToDo,
                      doneToDO: updatedDoneToDo,
                      grabbed: updatedGrabbed));
              break;
          }
        }
      },
      onError: (_) {
        print("On errorrr...");
        state = state;
      },
      onDone: () {
        print("on doneeee");
        state = state;
      },
    );
  }

  // function to handle delete function
  void handleDeleteSocket({required ToDoEntity toDo}) {
    // update local state by remove local state
    switch (toDo.toDoState) {
      case "CREATED_TO_DO":
        // remove from created
        final updatedList = state.data.createdToDo;
        updatedList
            .removeWhere((element) => element.toDoItem.toDoId == toDo.toDoId);

        // update state
        state = ToDoState(
            status: "connected",
            data: ToDoPointerData(
                grabbed: state.data.grabbed,
                createdToDo: updatedList,
                onGoingToDo: state.data.onGoingToDo,
                doneToDO: state.data.doneToDO));

        break;
      case "PROCESSED_TO_DO":
        // remove from processed
        final updatedList = state.data.onGoingToDo;
        updatedList
            .removeWhere((element) => element.toDoItem.toDoId == toDo.toDoId);

        // update state
        state = ToDoState(
            status: "connected",
            data: ToDoPointerData(
                grabbed: state.data.grabbed,
                createdToDo: state.data.createdToDo,
                onGoingToDo: updatedList,
                doneToDO: state.data.doneToDO));

        break;
      case "FINISHED_TO_DO":
        // remove from finished
        final updatedList = state.data.doneToDO;
        updatedList
            .removeWhere((element) => element.toDoItem.toDoId == toDo.toDoId);

        // update state
        state = ToDoState(
            status: "connected",
            data: ToDoPointerData(
                grabbed: state.data.grabbed,
                createdToDo: state.data.createdToDo,
                onGoingToDo: state.data.onGoingToDo,
                doneToDO: updatedList));

        break;
    }

    // create to do pointer
    ToDoPointerEntity toDoPointer = ToDoPointerEntity(
        toDoPointerState: "DELETED",
        targetToDoState: toDo.toDoState,
        toDoItem: toDo);

    // send data
    sl<ManageProjectSocketUsecase>().sendStreamData(toDoEntity: toDoPointer);
  }

  @override
  void dispose() {
    streamSubs?.cancel();
    super.dispose();
  }
}

final toDoNotifier =
    StateNotifierProvider.autoDispose<ToDoNotifier, ToDoState?>(
        (ref) => ToDoNotifier());
