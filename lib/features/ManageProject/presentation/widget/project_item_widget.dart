import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/project_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/presentation/controller/delete_project_provider.dart';

class ProjectItemWIdget extends ConsumerStatefulWidget {
  final ProjectEntity projectEntity;
  const ProjectItemWIdget({super.key, required this.projectEntity});

  @override
  ConsumerState<ProjectItemWIdget> createState() => _ProjectItemWIdgetState();
}

class _ProjectItemWIdgetState extends ConsumerState<ProjectItemWIdget> {
  // create state to show
  bool showProjectDescription = false;

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
              color: Colors.grey.withOpacity(0.4),
              offset: Offset(2, 3),
              blurRadius: 10,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.group,
            size: 55,
            color: customColor.textTitle!,
            fontWeight: FontWeight.w900,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // team title
                Text(
                  widget.projectEntity.projectName,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: customColor.textTitle,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: customColor.textTitle!),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    IconButton(
                        style: IconButton.styleFrom(
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          padding: EdgeInsets.all(2),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                        ),
                        onPressed: () {
                          setState(() {
                            showProjectDescription = !showProjectDescription;
                          });
                        },
                        icon: Icon(showProjectDescription
                            ? Icons.arrow_drop_up
                            : Icons.arrow_drop_down))
                  ],
                ),
                if (showProjectDescription)
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                            colors: [
                              customColor.timeLineCardColor5!,
                              customColor.timeLineCardColor6!,
                            ],
                            begin: AlignmentGeometry.bottomLeft,
                            end: AlignmentGeometry.topRight),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            offset: Offset(2, 3),
                            blurRadius: 10,
                          )
                        ]),
                    child: Text(
                      widget.projectEntity.projectDescription,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: customColor.textTitle!,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          customColor.timeLineCardColor4!,
                          customColor.timeLineCardColor5!
                        ],
                        begin: AlignmentGeometry.bottomLeft,
                        end: AlignmentGeometry.topRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          offset: Offset(2, 3),
                          blurRadius: 10,
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        size: 20,
                        color: customColor.textTitle!,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Lead By : ${widget.projectEntity.userModel!.userName}",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: customColor.textTitle!,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Status : ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: customColor.textTitle!,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 9),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          gradient: LinearGradient(
                            colors: [
                              customColor.averageStart!.withOpacity(0.5),
                              customColor.averageEnd!.withOpacity(0.5),
                            ],
                            begin: AlignmentGeometry.bottomLeft,
                            end: AlignmentGeometry.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 10,
                              offset: Offset(1, 2),
                            )
                          ]),
                      child: Text(
                        widget.projectEntity.projectStatus,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: customColor.textTitle),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_month,
                      size: 18,
                      fontWeight: FontWeight.w900,
                      color: customColor.textTitle!,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      widget.projectEntity.createdAt.split(":")[0],
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: customColor.textTitle),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                      backgroundColor: customColor.averageEnd!,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadiusGeometry.all(Radius.circular(10)))),
                  onPressed: () {
                    // detail project with to do inside
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.details,
                        fontWeight: FontWeight.w900,
                        size: 16,
                        color: customColor.textTitle!,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "detail",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 14,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                      backgroundColor: customColor.errorColor!,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadiusGeometry.all(Radius.circular(10)))),
                  onPressed: () {
                    // delete current project
                    ref
                        .read(deleteProjectProviderProvider.notifier)
                        .deleteProject(
                            projectId: widget.projectEntity.projectId);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.delete,
                        fontWeight: FontWeight.w900,
                        size: 16,
                        color: customColor.textTitle!,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "delete",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
