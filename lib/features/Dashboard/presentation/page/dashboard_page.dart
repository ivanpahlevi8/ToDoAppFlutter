import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/connection_summary_widget.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/project_summary_widget.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/team_summary_widget.dart';
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Projects",
                  style: TextStyle(
                    color: customColor.dashboardTextPrimary!,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: customColor.dashboardTextSecondary!,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
          ProjectSummaryWidget(),

          SizedBox(
            height: 12,
          ),

          // top three project as leader
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "To-Dos",
                  style: TextStyle(
                    color: customColor.dashboardTextPrimary!,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: customColor.dashboardTextSecondary!,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
          ToDoSummaryWidget(),
          SizedBox(
            height: 12,
          ),
          // team summary
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Teams",
                  style: TextStyle(
                    color: customColor.dashboardTextPrimary!,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: customColor.dashboardTextSecondary!,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
          TeamSummaryWidget(),
          SizedBox(
            height: 12,
          ),
          // top three project as leader
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Connections",
                  style: TextStyle(
                    color: customColor.dashboardTextPrimary!,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: customColor.dashboardTextSecondary!,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
          ConnectionSummaryWidget(),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
