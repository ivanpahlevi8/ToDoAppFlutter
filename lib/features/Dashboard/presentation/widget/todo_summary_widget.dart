import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/controller/todo_summary_controller.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/custom_bar_chart.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/latest_todo_item_widget.dart';

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

      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // show diagram
          CustombarChart(
            graphData: graphData,
            threeD: true,
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Latest ToDo",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: customColor.textTitle!,
                ),
              )
            ],
          ),
          SizedBox(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.topThreeToDo.length,
              itemBuilder: (context, index) {
                // get item
                final getToDo = data.topThreeToDo[index];

                return LatestTodoItemWidget(toDoEntity: getToDo);
              },
            ),
          )
        ],
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
