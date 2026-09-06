import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_pointer_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/presentation/widget/target_dragged_item.dart';

class DropAreaItem extends StatelessWidget {
  final Color inputColor;
  final String titleColumn;
  final List<ToDoPointerEntity> dataList;
  final List<int> grabbedToDo;
  final Function(ToDoPointerEntity) onDelete;
  const DropAreaItem(
      {super.key,
      required this.inputColor,
      required this.titleColumn,
      required this.dataList,
      required this.grabbedToDo,
      required this.onDelete});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return DragTarget<ToDoPointerEntity>(onAcceptWithDetails: (data) {
      // on accept function, get data
      //final getData = data.data;
    }, builder: (context, candidateItems, rejectedItems) {
      // return a column container
      return Container(
        width: MediaQuery.sizeOf(context).width / 2,
        padding: EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 12,
        ),
        margin: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        decoration: BoxDecoration(
            color: inputColor,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              titleColumn,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: customColor.textTitle!,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: dataList.length,
                itemBuilder: (context, index) {
                  // get single data
                  final getData = dataList[index];

                  // check if its grabbed
                  bool isGrabbed =
                      grabbedToDo.contains(getData.toDoItem.toDoId);

                  // show data
                  return TargetDraggedItem(
                    toDoData: getData,
                    isGrabbed: isGrabbed,
                    onDelete: onDelete,
                  );
                },
              ),
            )
          ],
        ),
      );
    });
  }
}
