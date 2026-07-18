import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_list_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/async_ui.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/create_team_provider.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/delete_team_provider.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/get_teams_byuserid_provider.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/leave_team_provider.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/widget/team_list_item_widget.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/widget/team_list_item_widget_shimmer.dart';

class TeamListScreen extends ConsumerStatefulWidget {
  const TeamListScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TeamListScreenState();
}

class _TeamListScreenState extends ConsumerState<TeamListScreen> {
  @override
  void initState() {
    Future.microtask(() {
      ref.read(getTeamsByuseridProviderProvider.notifier).getTeamsByUserId();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final getAllTeamProvider = ref.watch(getTeamsByuseridProviderProvider);

    // listne on create team
    ref.listen<AsyncValue<TeamEntity?>>(createTeamProviderProvider, (
      prev,
      next,
    ) {
      next.onCreateTeam(context, ref);
    });

    // listen on create team
    ref.listen<AsyncValue<String?>>(deleteTeamProviderProvider, (prev, next) {
      next.onDeleteTeam(context, ref);
    });

    // listen on leave team
    ref.listen<AsyncValue<String?>>(leaveTeamProviderProvider, (prev, next) {
      next.onLeaveTeam(context, ref);
    });

    return Column(
      children: [
        Expanded(
          child: getAllTeamProvider.when(
            data: (data) {
              if (data != null) {
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    TeamListViewEntity getTeam = data[index];

                    return TeamListItemWidget(
                      teamListViewEntity: getTeam,
                      onDelete: (teamId) {
                        ref
                            .read(deleteTeamProviderProvider.notifier)
                            .deleteTeam(teamId: teamId);
                      },
                      onLeave: (teamId) {
                        ref
                            .read(leaveTeamProviderProvider.notifier)
                            .leaveTeam(teamId: teamId);
                      },
                    );
                  },
                );
              }

              return ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return TeamListItemWidgetShimmer();
                },
              );
            },
            error: (error, stackTrace) {
              return Center(
                child: Text(
                  "${error.toString()}, ${stackTrace.toString()}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.red,
                  ),
                ),
              );
            },
            loading: () {
              return ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return TeamListItemWidgetShimmer();
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
