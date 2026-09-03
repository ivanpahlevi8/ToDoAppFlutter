import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_pointer_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/presentation/widget/drop_area_item.dart';

class DropAreaWidget extends StatelessWidget {
  final List<ToDoPointerEntity> onCreatedItem;
  final List<ToDoPointerEntity> onGoingItem;
  final List<ToDoPointerEntity> onFinishedItem;
  final List<int> grabbedToDo;
  final List<int> grabbedItem;
  const DropAreaWidget(
      {super.key,
      required this.onCreatedItem,
      required this.onGoingItem,
      required this.onFinishedItem,
      required this.grabbedItem,
      required this.grabbedToDo});

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
          ),
          DropAreaItem(
              inputColor: Colors.green,
              titleColumn: "On Going Task",
              dataList: onGoingItem,
              grabbedToDo: grabbedToDo),
          DropAreaItem(
              inputColor: Colors.blue,
              titleColumn: "On Finished Task",
              dataList: onFinishedItem,
              grabbedToDo: grabbedToDo),
        ],
      ),
    );
  }
}
