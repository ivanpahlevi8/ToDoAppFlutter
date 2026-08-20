import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/project_entity.dart';

class ProjectItemWIdget extends StatelessWidget {
  final ProjectEntity projectEntity;
  const ProjectItemWIdget({super.key, required this.projectEntity});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                customColor.timeLineCardColor1!,
                customColor.timeLineCardColor2!,
              ],
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(4, 8),
              blurRadius: 10,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.group,
            size: 50,
            color: customColor.textTitle!,
            fontWeight: FontWeight.w900,
          ),
          SizedBox(
            width: 6,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // team title
                Text(
                  projectEntity.projectName,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: customColor.textTitle,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
