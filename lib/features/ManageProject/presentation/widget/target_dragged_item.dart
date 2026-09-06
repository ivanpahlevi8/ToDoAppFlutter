import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_pointer_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/presentation/widget/target_item.dart';

class TargetDraggedItem extends StatelessWidget {
  final ToDoPointerEntity toDoData;
  final bool isGrabbed;
  final Function(ToDoPointerEntity) onDelete;
  const TargetDraggedItem(
      {super.key,
      required this.toDoData,
      required this.isGrabbed,
      required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return LongPressDraggable<ToDoPointerEntity>(
        maxSimultaneousDrags: isGrabbed ? 0 : 1,
        data: toDoData,
        feedback: Transform.scale(
          scale: 1.2,
          child: TargetItem(
            toDoPointer: toDoData,
            isGrabbed: isGrabbed,
            onDelete: (xx) {},
          ),
        ),
        child: TargetItem(
          toDoPointer: toDoData,
          isGrabbed: isGrabbed,
          onDelete: onDelete,
        ));
  }
}
