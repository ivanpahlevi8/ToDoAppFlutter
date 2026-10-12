import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/project_entity.dart';

class TopProjectItemWidget extends StatelessWidget {
  final ProjectEntity project;
  const TopProjectItemWidget({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Container(
      width: 250,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
          border: Border.all(color: customColor.oceanBlueCardBorder!),
          borderRadius: BorderRadius.all(Radius.circular(12)),
          gradient: LinearGradient(
            colors: [
              customColor.oceanBlueCardGradientStart!,
              customColor.oceanBlueCardGradientEnd!,
            ],
            begin: AlignmentGeometry.topLeft,
            end: AlignmentGeometry.bottomRight,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            project.projectName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: customColor.textTitle!,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.drag_indicator,
                          color: customColor.textTitle!,
                          size: 14,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          project.projectStatus,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: customColor.textMedium!,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: customColor.textTitle!,
                          size: 14,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          project.createdAt.split("T")[0],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: customColor.textMedium!,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                  onPressed: () {},
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: customColor.averageEnd,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              blurRadius: 8,
                              offset: Offset(1, 2))
                        ]),
                    child: Icon(
                      Icons.info,
                      color: customColor.textTitle!,
                      size: 16,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
