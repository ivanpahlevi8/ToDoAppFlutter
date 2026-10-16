import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/to_do_entity.dart';

class LatestTodoItemWidget extends StatelessWidget {
  final ToDoEntity toDoEntity;
  const LatestTodoItemWidget({super.key, required this.toDoEntity});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Container(
      width: 200,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: customColor.pinkCardBorder!),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: customColor.pinkCardShadow!,
            offset: Offset(2, 4),
            blurRadius: 10,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            toDoEntity.todoName,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: customColor.textTitle!),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // stateus info
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.drag_indicator_sharp,
                          size: 16,
                          color: customColor.textTitle!,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          toDoEntity.toDoState,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: customColor.textTitle!,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    // date info
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.calendar_month,
                          size: 16,
                          color: customColor.textTitle!,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          toDoEntity.toDoCreatedAt.split("T")[0],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: customColor.textTitle!,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              // button for detail
            ],
          )
        ],
      ),
    );
  }
}
