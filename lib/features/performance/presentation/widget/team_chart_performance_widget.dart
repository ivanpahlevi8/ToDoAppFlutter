import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/performance/domain/entities/chart_data_entity.dart';
import 'package:to_do_app_flutter/features/performance/presentation/controller/team_chart_performance_controller.dart';

class TeamChartPerformanceWidget extends ConsumerStatefulWidget {
  const TeamChartPerformanceWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TeamChartPerformanceWidgetState();
}

class _TeamChartPerformanceWidgetState
    extends ConsumerState<TeamChartPerformanceWidget> {
  @override
  void initState() {
    // init to do chart performance data
    Future.microtask(() {
      // get current date year
      int getCurrentYear = DateTime.now().year;

      // get data
      ref
          .read(teamChartPerformanceControllerProvider.notifier)
          .getTeamChartPerformance(year: getCurrentYear);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    // listen to provider
    final teamChartPerformanceController =
        ref.watch(teamChartPerformanceControllerProvider);

    return teamChartPerformanceController.when(data: (data) {
      if (data == null) {
        // show loading
        return Shimmer.fromColors(
          baseColor: Colors.grey[500]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: 100,
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                8,
              ), // Optional: rounds the corners of your shimmer rows
            ),
          ),
        );
      }

      // create month list
      List<String> monthList = [
        "Jan",
        "Feb",
        "Mar",
        "Apr",
        "May",
        "Jun",
        "Jul",
        "Aug",
        "Sep",
        "Oct",
        "Nov",
        "Dec",
      ];

      // create data
      List<ChartDataEntity> teamsLead = data.teamsAsLeader.map((e) {
        return ChartDataEntity(
            month: monthList[e.month - 1], numData: e.count, name: "Leads");
      }).toList();

      List<ChartDataEntity> teammembers = data.teamsAsMember.map((e) {
        return ChartDataEntity(
            month: monthList[e.month - 1], numData: e.count, name: "members");
      }).toList();

      // show chart
      return Container(
        height: 300,
        padding: EdgeInsets.symmetric(vertical: 6),
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
        child: SfCartesianChart(
            title: ChartTitle(
              text: 'Teams Chart',
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w900,
                color: customColor.performanceDashboardTextPrimary!,
              ),
            ),
            primaryXAxis: CategoryAxis(),
            primaryYAxis: NumericAxis(
              minimum: 0,
              interval: 1,
            ),
            legend: Legend(isVisible: true, position: LegendPosition.bottom),
            trackballBehavior: TrackballBehavior(
              enable: true,
              activationMode: ActivationMode.singleTap,
              tooltipDisplayMode: TrackballDisplayMode.groupAllPoints,
            ),
            series: <CartesianSeries>[
              LineSeries<ChartDataEntity, String>(
                dataSource: teamsLead,
                xValueMapper: (ChartDataEntity data, _) => data.month,
                yValueMapper: (ChartDataEntity data, _) => data.numData,
                name: "As Leader",
                color: customColor.amberCardBorder!,
                markerSettings: const MarkerSettings(isVisible: true),
              ),
              LineSeries<ChartDataEntity, String>(
                dataSource: teammembers,
                xValueMapper: (ChartDataEntity data, _) => data.month,
                yValueMapper: (ChartDataEntity data, _) => data.numData,
                name: "As Member",
                color: customColor.emeraldCardBorder!,
                markerSettings: const MarkerSettings(isVisible: true),
              )
            ]),
      );
    }, error: (error, stackTrace) {
      return Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "${error.toString()}, ${stackTrace.toString()}",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: customColor.errorColor!,
            ),
          )
        ],
      );
    }, loading: () {
      return Shimmer.fromColors(
        baseColor: Colors.grey[500]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          height: 100,
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              8,
            ), // Optional: rounds the corners of your shimmer rows
          ),
        ),
      );
    });
  }
}
