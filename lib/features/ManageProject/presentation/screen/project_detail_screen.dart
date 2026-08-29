import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageProject/presentation/controller/project_detail_provider.dart';

class ProjectDetailScreen extends ConsumerStatefulWidget {
  final int projectId;
  const ProjectDetailScreen({super.key, required this.projectId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProjectDetailScreenState();
}

class _ProjectDetailScreenState extends ConsumerState<ProjectDetailScreen> {
  // create state for show more detail
  bool showMoreDetail = false;

  @override
  void initState() {
    // init project detail
    Future.microtask(() {
      ref
          .read(projectDetailProviderProvider.notifier)
          .getProjectDetail(projectId: widget.projectId);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    // watch project detail
    final projectDetailProvider = ref.watch(projectDetailProviderProvider);

    return projectDetailProvider.when(
      data: (data) {
        if (data == null) {
          // show loading dialog
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [CircularProgressIndicator()],
          );
        }

        // show data
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              margin: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      customColor.timeLineCardColor1!,
                      customColor.timeLineCardColor2!,
                    ],
                    begin: AlignmentGeometry.topLeft,
                    end: AlignmentGeometry.bottomRight,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
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
                    data.projectName,
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
                      Expanded(
                        child: Text(
                          data.projectDescription,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: customColor.textTitle,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1.5,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      IconButton(
                          style: IconButton.styleFrom(
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              padding: EdgeInsets.all(2)),
                          onPressed: () {
                            setState(() {
                              showMoreDetail = !showMoreDetail;
                            });
                          },
                          icon: Icon(
                            showMoreDetail
                                ? Icons.arrow_drop_up
                                : Icons.arrow_drop_down,
                            size: 18,
                            color: customColor.textTitle,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 600),
                    // Explicitly handles layout sizing during transition
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return FadeTransition(
                        opacity: animation,
                        // SizeTransition handles shrinking the physical space
                        child: SizeTransition(
                          sizeFactor: animation,
                          child: child,
                        ),
                      );
                    },
                    child: showMoreDetail
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                size: 20,
                                color: customColor.textTitle!,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Lead By",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                    color: customColor.textTitle!),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 18),
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
                                        offset: Offset(1, 2),
                                        blurRadius: 10,
                                      )
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Text(
                                  data.userModel!.userName,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                    color: customColor.textTitle!,
                                  ),
                                ),
                              )
                            ],
                          )
                        : SizedBox.shrink(),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 1200),
                    // Explicitly handles layout sizing during transition
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return FadeTransition(
                        opacity: animation,
                        // SizeTransition handles shrinking the physical space
                        child: SizeTransition(
                          sizeFactor: animation,
                          child: child,
                        ),
                      );
                    },
                    child: showMoreDetail
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.calendar_month,
                                size: 20,
                                color: customColor.textTitle!,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Created At",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                    color: customColor.textTitle!),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 18),
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
                                        offset: Offset(1, 2),
                                        blurRadius: 10,
                                      )
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Text(
                                  data.createdAt.split("T")[0],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                    color: customColor.textTitle!,
                                  ),
                                ),
                              )
                            ],
                          )
                        : SizedBox.shrink(),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 1800),
                    // Explicitly handles layout sizing during transition
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return FadeTransition(
                        opacity: animation,
                        // SizeTransition handles shrinking the physical space
                        child: SizeTransition(
                          sizeFactor: animation,
                          child: child,
                        ),
                      );
                    },
                    child: showMoreDetail
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.label,
                                size: 20,
                                color: customColor.textTitle!,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                "Status",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                    color: customColor.textTitle!),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 18),
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
                                        offset: Offset(1, 2),
                                        blurRadius: 10,
                                      )
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Text(
                                  data.projectStatus,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                    color: customColor.textTitle!,
                                  ),
                                ),
                              )
                            ],
                          )
                        : SizedBox.shrink(),
                  ),
                ],
              ),
            )
          ],
        );
      },
      error: (error, stackTrace) {
        // show error message
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Error Happen : ${error.toString()}, ${stackTrace.toString()}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: customColor.errorColor!,
              ),
            )
          ],
        );
      },
      loading: () {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [CircularProgressIndicator()],
        );
      },
    );
  }
}
