import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_pointer_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/presentation/widget/drop_area_item.dart';

class DropAreaWidget extends StatelessWidget {
  final List<ToDoPointerEntity> onCreatedItem;
  final List<ToDoPointerEntity> onGoingItem;
  final List<ToDoPointerEntity> onFinishedItem;
  final List<int> grabbedToDo;
  final List<int> grabbedItem;
  final Function(ToDoPointerEntity) onDelete;
  final Function(ToDoPointerEntity) onDropped;
  final Function(ToDoPointerEntity) onGrabbbed;
  const DropAreaWidget({
    super.key,
    required this.onCreatedItem,
    required this.onGoingItem,
    required this.onFinishedItem,
    required this.grabbedItem,
    required this.grabbedToDo,
    required this.onDelete,
    required this.onDropped,
    required this.onGrabbbed,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // show on created item
          DropAreaItem(
            inputColor: Colors.red,
            titleColumn: "On Created Task",
            dataList: onCreatedItem,
            grabbedToDo: grabbedToDo,
            onDelete: onDelete,
            onDropped: onDropped,
            areaStateName: "CREATED_TO_DO",
            onGrabbed: onGrabbbed,
          ),
          DropAreaItem(
            inputColor: Colors.green,
            titleColumn: "On Going Task",
            dataList: onGoingItem,
            grabbedToDo: grabbedToDo,
            onDelete: onDelete,
            onDropped: onDropped,
            areaStateName: "PROCESSED_TO_DO",
            onGrabbed: onGrabbbed,
          ),
          DropAreaItem(
            inputColor: Colors.blue,
            titleColumn: "On Finished Task",
            dataList: onFinishedItem,
            grabbedToDo: grabbedToDo,
            onDelete: onDelete,
            onDropped: onDropped,
            areaStateName: "FINISHED_TO_DO",
            onGrabbed: onGrabbbed,
          ),
        ],
      ),
    );
  }
}
