import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/performance/presentation/widget/connection_performance_card_widget.dart';
import 'package:to_do_app_flutter/features/performance/presentation/widget/project_performance_card_widget.dart';
import 'package:to_do_app_flutter/features/performance/presentation/widget/team_performance_card_widget.dart';
import 'package:to_do_app_flutter/features/performance/presentation/widget/todo_summary_card_widget.dart';

class PerformanceScreen extends StatefulWidget {
  const PerformanceScreen({super.key});

  @override
  State<PerformanceScreen> createState() => _PerformanceScreenState();
}

class _PerformanceScreenState extends State<PerformanceScreen> {
  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    final DateTime currentDate = DateTime.now(); //

    final DateTime lastMonthDate =
        DateTime(currentDate.year, currentDate.month - 1);

    final String currentMonth = DateFormat('MMMM').format(currentDate);
    final String lastMonth = DateFormat('MMMM').format(lastMonthDate);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // title and headers
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Text(
                "Performance Dashboard",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: customColor.performanceDashboardTextPrimary!,
                ),
              ),
              Text(
                "Your performance this month",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: customColor.textMedium!,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),

        // date badge
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(22)),
              boxShadow: [
                BoxShadow(
                  color: customColor.performanceDashboardShadowColor!,
                  offset: Offset(2, 3),
                  blurRadius: 22,
                )
              ],
              color: customColor.performanceDashboardCardColor),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.calendar_today_rounded,
                weight: 2,
                color: customColor.performanceDashboardTextPrimary,
                size: 20,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "$lastMonth vs $currentMonth",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: customColor.performanceDashboardTextPrimary,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ToDoPerformanceCardWidget(),
            SizedBox(
              width: 6,
            ),
            ProjectPerformanceCardWidget()
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TeamPerformanceCardWidget(),
            SizedBox(
              width: 6,
            ),
            ConnectionPerformanceCardWidget()
          ],
        ),
      ],
    );
  }
}
