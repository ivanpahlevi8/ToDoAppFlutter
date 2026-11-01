import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/performance/presentation/controller/team_performance_controller.dart';

class TeamPerformanceCardWidget extends ConsumerStatefulWidget {
  const TeamPerformanceCardWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TeamPerformanceCardWidgetState();
}

class _TeamPerformanceCardWidgetState
    extends ConsumerState<TeamPerformanceCardWidget> {
  @override
  void initState() {
    // init to do performance data
    Future.microtask(() {
      ref.read(teamPerformanceControllerProvider.notifier).getTeamPerformance();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // get custom color
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    // watch todo performance controller
    final toDoPerformanceProvider =
        ref.watch(teamPerformanceControllerProvider);

    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        margin: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        decoration: BoxDecoration(
            border:
                Border.all(color: customColor.performanceDashboardBorderColor!),
            color: customColor.performanceDashboardCardColor!,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: customColor.performanceDashboardShadowColor!,
                blurRadius: 10,
                offset: Offset(2, 4),
              )
            ]),
        child: toDoPerformanceProvider.when(data: (data) {
          // show loading first if data still null, initial
          if (data == null) {
            return SizedBox(
              height: 250,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          // create total to do
          int numberTeamCreatedCurrMonth =
              data.numberTeamInvolvedCurrMonth + data.numberTeamLeadsCurrMonth;

          int numberTeamCreatedLastMonth =
              data.numberTeamInvolvedLastMonth + data.numberTeamLeadsLastMonth;

          int teamPercentage = 0;

          if (numberTeamCreatedLastMonth < 1) {
            teamPercentage = 100;
          } else {
            teamPercentage =
                ((numberTeamCreatedCurrMonth - numberTeamCreatedLastMonth) /
                        numberTeamCreatedLastMonth *
                        100)
                    .toInt();
          }

          // show data view
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // first row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // icon for todo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: customColor.performanceDashboardAccentSoft!,
                    ),
                    child: Icon(
                      Icons.people_alt,
                      size: 20,
                      weight: 1.9,
                      color: customColor.performanceDashboardAccent!,
                    ),
                  ),
                  // detail button
                  IconButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadiusGeometry.all(Radius.circular(10))),
                        minimumSize: Size.zero,
                        padding: EdgeInsets.all(4),
                      ),
                      icon: Icon(
                        Icons.keyboard_arrow_right,
                        size: 24,
                        color: customColor.textTitle!,
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              // to do created this month
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Teams Created",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: customColor.performanceDashboardTextSecondary!,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    numberTeamCreatedCurrMonth.toString(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: customColor.performanceDashboardTextPrimary!,
                    ),
                  ),
                ],
              ),
              // percentage compare to last month
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(top: 6, bottom: 1, left: 8, right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      color: (teamPercentage > 0)
                          ? customColor.performanceDashboardPositive!
                          : customColor.performanceDashboardNegativeBg!,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // icon up or down
                        Transform.flip(
                          flipY: (teamPercentage < 0),
                          child: Icon(
                            Icons.arrow_outward_outlined,
                            size: 18,
                            color: (teamPercentage > 0)
                                ? customColor.performanceDashboardPositive!
                                : customColor.performanceDashboardNegative!,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        // positive or negative symbol
                        Padding(
                          padding: EdgeInsetsGeometry.only(top: 6),
                          child: Text(
                            (teamPercentage > 0) ? "+" : "-",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: (teamPercentage > 0)
                                  ? customColor.performanceDashboardPositive!
                                  : customColor.performanceDashboardNegative!,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        // percentage text
                        Text(
                          "${teamPercentage.abs()} %",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: (teamPercentage > 0)
                                ? customColor.performanceDashboardPositive!
                                : customColor.performanceDashboardNegative!,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              // number created last month
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Last Month : $numberTeamCreatedLastMonth",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: customColor.performanceDashboardTextSecondary!,
                    ),
                  )
                ],
              )
            ],
          );
        }, error: (error, stackTrace) {
          return SizedBox(
            height: 250,
            child: Text(
                "Errro happen : ${error.toString()}, ${stackTrace.toString()}"),
          );
        }, loading: () {
          return SizedBox(
            height: 250,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }),
      ),
    );
  }
}
