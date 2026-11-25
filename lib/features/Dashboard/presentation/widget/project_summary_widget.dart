import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/controller/project_summary_controller.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/custom_doughnut_chart.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/top_project_item_widget.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/dashboard_shimmer_widget.dart';

class ProjectSummaryWidget extends ConsumerStatefulWidget {
  const ProjectSummaryWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProjectSummaryWidgetState();
}

class _ProjectSummaryWidgetState extends ConsumerState<ProjectSummaryWidget> {
  // Which role tile is selected: 0 = Leading, 1 = Member.
  // Same order as graphData, so it doubles as the doughnut slice index.
  int _selectedRole = 0;

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
        return const RoleSummaryShimmer(showList: true);
      }

      // create graph data
      List<Map<String, dynamic>> graphData = [
        {"category": "Project as Leader", "value": data.projectLeadNumber},
        {"category": "Project as Member", "value": data.projectMemberNumber}
      ];

      final bool isLeading = _selectedRole == 0;

      // projects shown under the card, filtered by the selected tile
      final filteredProjects = isLeading
          ? data.topThreeProjectAsLeader
          : data.topThreeProjectAsMember;

      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18)),
              color: customColor.dashboardCardColor!,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomDoughnutChart(
                  graphData: graphData,
                  colors: [
                    customColor.dashboardRoleLeading!,
                    customColor.dashboardRoleMember!,
                  ],
                  size: 150,
                  selectedIndex: _selectedRole,
                  centerLabel: isLeading ? 'leading' : 'as member',
                  dimmedColor: customColor.dashboardStrongBorderColor!,
                  gapColor: customColor.dashboardCardColor!,
                  trackColor: customColor.dashboardChartTrackColor!,
                  valueColor: customColor.dashboardTextPrimary!,
                  labelColor: customColor.dashboardTextSecondary!,
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _roleTile(
                        customColor: customColor,
                        index: 0,
                        label: "Leading",
                        value: data.projectLeadNumber,
                        dotColor: customColor.dashboardRoleLeading!,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      _roleTile(
                        customColor: customColor,
                        index: 1,
                        label: "Member",
                        value: data.projectMemberNumber,
                        dotColor: customColor.dashboardRoleMember!,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Tap one to filter the list",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: customColor.dashboardTextSecondary!),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          // project list, filtered by the selected tile
          SizedBox(
            width: double.infinity, // no height: it follows the cards
            child: filteredProjects.isEmpty
                ? Center(
                    child: Text(
                      isLeading
                          ? "You aren't leading any project yet"
                          : "You aren't a member of any project yet",
                      style: TextStyle(
                        fontSize: 14,
                        color: customColor.dashboardTextSecondary!,
                      ),
                    ),
                  )
                // A scrolling Row takes the height of its tallest card,
                // so no fixed height is needed (max 3 cards, no lazy list).
                : SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (final project in filteredProjects)
                          TopProjectItemWidget(
                              isLeading: isLeading, project: project),
                      ],
                    ),
                  ),
          ),
        ],
      );
    }, error: (error, stackTrace) {
      return Text("Error happen ${error.toString()}, ${stackTrace.toString()}");
    }, loading: () {
      return const RoleSummaryShimmer(showList: true);
    });
  }

  // One tappable role tile: dot, label and count.
  // The selected tile gets an amber border and a soft accent background.
  Widget _roleTile({
    required AppCustomColors customColor,
    required int index,
    required String label,
    required int value,
    required Color dotColor,
  }) {
    final bool isSelected = _selectedRole == index;
    final BorderRadius radius = BorderRadius.all(Radius.circular(12));

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: radius,
        onTap: () => setState(() => _selectedRole = index),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          decoration: BoxDecoration(
            color: isSelected
                ? customColor.dashboardAccentSoft!
                : Colors.transparent,
            border: Border.all(
              color: isSelected
                  ? customColor.dashboardAccent!
                  : customColor.dashboardDividerColor!,
              width: isSelected ? 2 : 1.2,
            ),
            borderRadius: radius,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 14,
                    height: 14,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: dotColor),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: customColor.dashboardTextPrimary!,
                    ),
                  )
                ],
              ),
              Text(
                "$value",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: customColor.dashboardTextPrimary!,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
