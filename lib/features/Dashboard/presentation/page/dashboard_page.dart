import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/project_summary_widget.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/todo_summary_widget.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // project summary
          Row(
            children: [
              Expanded(
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      border: Border.all(color: customColor.cardBorder1!),
                      gradient: LinearGradient(colors: [
                        customColor.cardGradientStart1!,
                        customColor.cardGradientEnd1!
                      ]),
                      boxShadow: [
                        BoxShadow(
                          color: customColor.cardShadow1!,
                          blurRadius: 12,
                          offset: Offset(2, 3),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Project Summary",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: customColor.textTitle!,
                              ),
                            )
                          ],
                        ),
                        ProjectSummaryWidget(),
                      ],
                    )),
              )
            ],
          ),
          SizedBox(
            height: 6,
          ),
          // top three project as leader
          Row(
            children: [
              Expanded(
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: customColor.tealCardBorder!),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      gradient: LinearGradient(colors: [
                        customColor.tealCardGradientStart!,
                        customColor.tealCardGradientEnd!
                      ]),
                      boxShadow: [
                        BoxShadow(
                          color: customColor.tealCardShadow!,
                          blurRadius: 12,
                          offset: Offset(2, 3),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "ToDo Summary",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: customColor.textTitle!,
                              ),
                            )
                          ],
                        ),
                        ToDoSummaryWidget(),
                      ],
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
