import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_pointer_entity.dart';

class TargetItem extends StatelessWidget {
  final ToDoPointerEntity toDoPointer;
  final bool isGrabbed;
  const TargetItem(
      {super.key, required this.toDoPointer, required this.isGrabbed});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: isGrabbed
              ? customColor.timeLineCardColor1!.withOpacity(0.5)
              : customColor.timeLineCardColor1!,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: Offset(2, 3),
              blurRadius: 10,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            toDoPointer.toDoItem.todoName,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: customColor.textTitle!,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: customColor.averageEnd,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    minimumSize: Size.zero,
                    padding: EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 12,
                    )),
                onPressed: () {},
                child: Text(
                  "Detail",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w900,
                    color: customColor.textTitle,
                  ),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: customColor.errorColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    minimumSize: Size.zero,
                    padding: EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 12,
                    )),
                onPressed: () {},
                child: Text(
                  "Delete",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w900,
                    color: customColor.textTitle,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
