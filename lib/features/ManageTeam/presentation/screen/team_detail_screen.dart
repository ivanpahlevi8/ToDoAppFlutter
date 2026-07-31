import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/role_team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/async_ui.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/create_role_team_provider.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/get_team_detail_provider.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/leave_team_provider.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/remove_role_team_provider.dart';
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

    // listen to team leave on detail
    ref.listen<AsyncValue<String?>>(leaveTeamProviderProvider, (prev, next) {
      next.onLeaveTeamDetail(context, ref);
    });

    // listen to create team role
    ref.listen<AsyncValue<RoleTeamEntity?>>(createRoleTeamProviderProvider, (
      prev,
      next,
    ) {
      next.onCreateTeam(context, ref);
    });

    // listen to create
    ref.listen<AsyncValue<String?>>(removeRoleTeamProviderProvider, (
      prev,
      next,
    ) {
      next.onRemoveRoleTeam(context, ref, widget.teamId);
    });

    return Column(
      children: [
        Expanded(
          child: teamDetailProvider.when(
            data: (data) {
              if (data != null) {
                return TeamDetailPage(
                  teamDetail: data,
                  onUserDetail: (userId) {
                    // user detail
                  },
                  onRemoveUser: (userId) {
                    // remove user from group
                  },
                  onLeaveGroup: (teamId) {
                    // user leave group
                    ref
                        .read(leaveTeamProviderProvider.notifier)
                        .leaveTeam(teamId: teamId);
                  },
                  onCreateRoleTeam: (teamRole) {
                    // pop dialog
                    context.pop();

                    ref
                        .read(createRoleTeamProviderProvider.notifier)
                        .createRoleTeam(roleTeamInput: teamRole);
                  },
                  onRemoveTeamRole: (teamRoleId) {
                    ref
                        .read(removeRoleTeamProviderProvider.notifier)
                        .removeRoleTeam(roleTeamId: teamRoleId);
                  },
                );
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
