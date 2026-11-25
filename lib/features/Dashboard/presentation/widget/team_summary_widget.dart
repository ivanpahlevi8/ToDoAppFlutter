import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/controller/team_summary_controller.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/avatar_color.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/custom_doughnut_chart.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_entity.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/dashboard_shimmer_widget.dart';

class TeamSummaryWidget extends ConsumerStatefulWidget {
  const TeamSummaryWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TeamSummaryWidgetState();
}

class _TeamSummaryWidgetState extends ConsumerState<TeamSummaryWidget> {
  // Which role tile is selected: 0 = Leading, 1 = Member.
  // Same order as graphData, so it doubles as the doughnut slice index.
  int _selectedRole = 0;

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
        return const RoleSummaryShimmer();
      }

      // create data fragment (leader first, so index 0 = Leading)
      List<Map<String, dynamic>> graphData = [
        {"category": "Team as Leader", "value": data.numberTeamLead},
        {"category": "Team as Member", "value": data.numberTeamInvolved}
      ];

      final bool isLeading = _selectedRole == 0;

      // create team list
      List<TeamEntity> selectedTeams =
          isLeading ? data.topTeamLead : data.topTeamInvolved;

      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // graph card: doughnut + Leading / Member tiles
          Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18)),
              color: customColor.dashboardCardColor!,
            ),
            child: Column(
              children: [
                Row(
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
                            value: data.numberTeamLead,
                            dotColor: customColor.dashboardRoleLeading!,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          _roleTile(
                            customColor: customColor,
                            index: 1,
                            label: "Member",
                            value: data.numberTeamInvolved,
                            dotColor: customColor.dashboardRoleMember!,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                ...selectedTeams.map((data) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Divider(
                          height: 12,
                          thickness: 1.5,
                          color: customColor.dashboardDividerColor!,
                        ),
                      ),
                      // data
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                // avatar
                                TeamAvatar(
                                  id: data.teamId.toString(),
                                  name: data.teamName,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data.teamName,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                        color:
                                            customColor.dashboardTextPrimary!,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      isLeading
                                          ? "Leading since ${data.createdAt.split("T")[0]}"
                                          : "Member since ${data.createdAt.split("T")[0]}",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color:
                                            customColor.dashboardTextSecondary!,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.keyboard_arrow_right,
                                size: 20,
                                color: customColor.dashboardTextSecondary!,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  );
                }),
              ],
            ),
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
      return const RoleSummaryShimmer();
    });
  }

  // One tappable role tile: dot, label and count.
  // The selected tile gets an accent border and a soft accent background.
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
