import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/controller/team_summary_controller.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/custom_pie_chart.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/top_team_item_widget.dart';

class TeamSummaryWidget extends ConsumerStatefulWidget {
  const TeamSummaryWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TeamSummaryWidgetState();
}

class _TeamSummaryWidgetState extends ConsumerState<TeamSummaryWidget> {
  @override
  void initState() {
    // init controller
    Future.microtask(() {
      ref
          .read(teamSummaryControllerProvider.notifier)
          .getTeamSummaryDashboard();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    final teamSummaryController = ref.watch(teamSummaryControllerProvider);

    return teamSummaryController.when(data: (data) {
      if (data == null) {
        return CircularProgressIndicator();
      }

      // create data fragment
      List<Map<String, dynamic>> graphData = [
        {"category": "Team as Member", "value": data.numberTeamInvolved},
        {"category": "Team as Leader", "value": data.numberTeamLead}
      ];

      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // show pie chart
          CustomPieChart(
              graphData: graphData,
              threeD: true,
              colors: [const Color(0xFFFFD9C7), const Color(0xFFFF9A6C)]),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Team as Leader",
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
            height: 140, // a horizontal ListView needs a fixed height
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.topTeamLead.length,
                itemBuilder: (context, index) {
                  // get project
                  final getTeam = data.topTeamLead[index];

                  return TopTeamItemWidget(team: getTeam);
                }),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Team as Member",
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
            height: 140, // a horizontal ListView needs a fixed height
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.topTeamInvolved.length,
                itemBuilder: (context, index) {
                  // get project
                  final getTeam = data.topTeamInvolved[index];

                  return TopTeamItemWidget(team: getTeam);
                }),
          ),
        ],
      );
    }, error: ((error, stackTrace) {
      return Text(
        "${error.toString()}, ${stackTrace.toString()}",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: customColor.errorColor!,
        ),
      );
    }), loading: () {
      return CircularProgressIndicator();
    });
  }
}
