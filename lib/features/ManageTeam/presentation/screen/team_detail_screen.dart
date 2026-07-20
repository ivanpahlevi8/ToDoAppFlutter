import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/get_team_detail_provider.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/screen/team_detail_page.dart';

class TeamDetailScreen extends ConsumerStatefulWidget {
  final int teamId;
  const TeamDetailScreen({super.key, required this.teamId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TeamDetailScreenState();
}

class _TeamDetailScreenState extends ConsumerState<TeamDetailScreen> {
  @override
  void initState() {
    Future.microtask(() {
      ref
          .read(getTeamDetailProviderProvider.notifier)
          .getTeamDetail(teamId: widget.teamId);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final teamDetailProvider = ref.watch(getTeamDetailProviderProvider);

    return Column(
      children: [
        Expanded(
          child: teamDetailProvider.when(
            data: (data) {
              if (data != null) {
                return TeamDetailPage(teamDetail: data);
              }

              return Center(child: CircularProgressIndicator());
            },
            error: (error, stackTrace) {
              return Center(
                child: Text("${error.toString()}, ${stackTrace.toString()}"),
              );
            },
            loading: () {
              return Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ],
    );
  }
}
