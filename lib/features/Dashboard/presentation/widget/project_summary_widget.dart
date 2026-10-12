import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/controller/project_summary_controller.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/custom_pie_chart.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/top_project_item_widget.dart';

class ProjectSummaryWidget extends ConsumerStatefulWidget {
  const ProjectSummaryWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProjectSummaryWidgetState();
}

class _ProjectSummaryWidgetState extends ConsumerState<ProjectSummaryWidget> {
  @override
  void initState() {
    // call future function
    Future.microtask(() {
      ref
          .read(projectSummaryControllerProvider.notifier)
          .getProjectSummaryDashboard();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // get custom color
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    final projectSummaryController =
        ref.watch(projectSummaryControllerProvider);

    return projectSummaryController.when(data: (data) {
      if (data == null) {
        return CircularProgressIndicator();
      }

      // create graph data
      List<Map<String, dynamic>> graphData = [
        {"category": "Project as Leader", "value": data.projectLeadNumber},
        {"category": "Project as Member", "value": data.projectMemberNumber}
      ];

      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomPieChart(
              graphData: graphData,
              colors: [Colors.indigo, Colors.teal],
              threeD: true),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Project as Leader",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: customColor.textTitle!,
                ),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 130, // a horizontal ListView needs a fixed height
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.topThreeProjectAsLeader.length,
                itemBuilder: (context, index) {
                  // get project
                  final getProjectEntity = data.topThreeProjectAsLeader[index];

                  return TopProjectItemWidget(project: getProjectEntity);
                }),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Project as Member",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: customColor.textTitle!,
                ),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 130, // a horizontal ListView needs a fixed height
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.topThreeProjectAsMember.length,
                itemBuilder: (context, index) {
                  // get project
                  final getProjectEntity = data.topThreeProjectAsMember[index];

                  return TopProjectItemWidget(project: getProjectEntity);
                }),
          )
        ],
      );
    }, error: (error, stackTrace) {
      return Text("Error happen ${error.toString()}, ${stackTrace.toString()}");
    }, loading: () {
      return CircularProgressIndicator();
    });
  }
}
