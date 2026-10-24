import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/controller/connection_summary_controller.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/custom_bar_chart.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/top_connection_item_widget.dart';

class ConnectionSummaryWidget extends ConsumerStatefulWidget {
  const ConnectionSummaryWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ConnectionSummaryWidgetState();
}

class _ConnectionSummaryWidgetState
    extends ConsumerState<ConnectionSummaryWidget> {
  @override
  void initState() {
    // init connection summary data
    Future.microtask(() {
      ref
          .read(connectionSummaryControllerProvider.notifier)
          .getConnectionSummary();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;
    final connectionSummaryProvider =
        ref.watch(connectionSummaryControllerProvider);

    return connectionSummaryProvider.when(data: (data) {
      if (data == null) {
        return CircularProgressIndicator();
      }

      // create data set
      List<Map<String, dynamic>> graphData = [
        {
          "category": "Requested Connection",
          "value": data.numberOfRequestedConnection
        },
        {
          "category": "Request Connection",
          "value": data.numberOfRequestConnection
        },
        {
          "category": "User Followed",
          "value": data.numberConnectionStatusUserFollowed
        },
        {
          "category": "User Follow",
          "value": data.numberConnectionStatusUseFollow
        },
        {
          "category": "Connected",
          "value": data.numberConnectionStatusConnect,
        },
        {
          "category": "User Reject",
          "value": data.numberConnectionStatusUserReject,
        },
        {
          "category": "User Rejected",
          "value": data.numberConnectionStatusUserRejected,
        },
        {
          "category": "Disconnected",
          "value": data.numberConnectionStatusDisconnect,
        },
      ];

      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomBarChart(graphData: graphData, threeD: true),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Latest Connection",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: customColor.textTitle!,
                ),
              )
            ],
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.userReference.length,
              itemBuilder: (context, index) {
                // get item
                final getConnection = data.userReference[index];

                return TopConnectionItemWidget(
                    connectionSummaryEntity: getConnection);
              },
            ),
          )
        ],
      );
    }, error: (error, stackTrace) {
      return Text(
        "${error.toString()}, ${stackTrace.toString()}",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: customColor.errorColor!,
        ),
      );
    }, loading: () {
      return CircularProgressIndicator();
    });
  }
}
