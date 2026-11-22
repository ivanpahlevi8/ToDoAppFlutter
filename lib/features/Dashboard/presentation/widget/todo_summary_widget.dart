import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/controller/todo_summary_controller.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/custom_bar_chart.dart';

class ToDoSummaryWidget extends ConsumerStatefulWidget {
  const ToDoSummaryWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ToDoSummaryWidgetState();
}

class _ToDoSummaryWidgetState extends ConsumerState<ToDoSummaryWidget> {
  @override
  void initState() {
    // init data for todo summary
    Future.microtask(() {
      ref
          .read(toDoSummaryControllerProvider.notifier)
          .getToDoSummaryDashboard();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // custom color
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    // create watch on todo controller
    final toDoSummaryController = ref.watch(toDoSummaryControllerProvider);

    return toDoSummaryController.when(data: (data) {
      if (data == null) {
        return CircularProgressIndicator();
      }

      // create graph data
      List<Map<String, dynamic>> graphData = [
        {"category": "On Created", "value": data.onCreateToDoNumber},
        {"category": "On Progressed", "value": data.onProgressToDoNumber},
        {"category": "On Finished", "value": data.onFinishedToDoNumber},
      ];

      return Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          color: customColor.dashboardCardColor!,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // show diagram
            CustomBarChart(
              graphData: graphData,
              height: 200,
              colors: [
                customColor.dashboardStatusToDo!,
                customColor.dashboardStatusInProgress!,
                customColor.dashboardStatusDone!,
              ],
              threeD: false,
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                height: 12,
                thickness: 1.5,
                color: customColor.dashboardDividerColor!,
              ),
            ),
            ...data.topThreeToDo.map((e) {
              // get item
              final getToDo = e;

              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // icon
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: customColor.dashboardAccentSoft!,
                      ),
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.watch_later_outlined,
                        color: customColor.dashboardAccent!,
                        size: 18,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          getToDo.todoName,
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 17,
                            color: customColor.dashboardTextPrimary!,
                          ),
                        ),
                        Text(
                          "Created ${getToDo.toDoCreatedAt.split("T")[0]}",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: customColor.dashboardTextSecondary!,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: customColor.dashboardAccentSoft!,
                      ),
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        getToDo.toDoState == "CREATED_TO_DO"
                            ? "Created"
                            : getToDo.toDoState == "PROCESSED_TO_DO"
                                ? "In progress"
                                : "Finished",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: customColor.dashboardAccentText!,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      );
    }, error: (error, stackTrace) {
      return Text(
        "${error.toString()}, ${stackTrace.toString()}",
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: customColor.errorColor!),
      );
    }, loading: () {
      return CircularProgressIndicator();
    });
  }
}
