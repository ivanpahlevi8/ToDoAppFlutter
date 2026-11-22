import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/controller/connection_summary_controller.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/avatar_stack_widget.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/stat_bar_widget.dart';

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
        {"category": "Requested", "value": data.numberOfRequestedConnection},
        {"category": "Request", "value": data.numberOfRequestConnection},
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

      // get max value
      final maxValue =
          graphData.fold<int>(0, (m, i) => i['value'] > m ? i['value'] : m);

      return Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          color: customColor.dashboardCardColor!,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // one bar row per graphData entry
            for (int i = 0; i < graphData.length; i++) ...[
              if (i > 0)
                SizedBox(
                  height: 10,
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: _statRow(
                  customColor: customColor,
                  label: graphData[i]['category'] as String,
                  value: graphData[i]['value'] as int,
                  maxValue: maxValue,
                  needsAction: i == 0,
                ),
              ),
            ],
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                height: 12,
                thickness: 1.5,
                color: customColor.dashboardDividerColor!,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AvatarStack(
                    people: data.userReference.map((e) {
                      return AvatarPerson(e.user.userId, e.user.userName);
                    }).toList(),
                    totalCount: data.numberConnectionStatusConnect,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${data.numberConnectionStatusConnect} Connections",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: customColor.dashboardTextPrimary!,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          _connectionNames(
                            data.userReference
                                .map((e) => e.user.userName)
                                .toList(),
                            data.numberConnectionStatusConnect,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: customColor.dashboardTextSecondary!,
                          ),
                        ),
                      ],
                    ),
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
        ),
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

  // "Ana, Budi, Citra and 4 others"
  // The "and N others" part is left out when every connection is named.
  String _connectionNames(List<String> names, int total) {
    if (names.isEmpty) return "No connections yet";

    final String joined = names.join(", ");
    final int others = total - names.length;

    return others > 0 ? "$joined and $others others" : joined;
  }

  Widget _statRow({
    required AppCustomColors customColor,
    required String label,
    required int value,
    required int maxValue,
    bool needsAction = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 110,
          child: Text(
            label,
            maxLines: 2,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: customColor.dashboardTextPrimary!,
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: StatBarRow(
            item: StatBarData(label, value, needsAction: needsAction),
            color: customColor.dashboardChartTrackColor!,
            fill: needsAction
                ? customColor.dashboardNeedsAction!
                : customColor.dashboardConnected!,
            fraction: maxValue == 0 ? 0 : value / maxValue,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        SizedBox(
          width: 28,
          child: Text(
            "$value",
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w900,
              color: customColor.dashboardTextPrimary!,
            ),
          ),
        ),
      ],
    );
  }
}
