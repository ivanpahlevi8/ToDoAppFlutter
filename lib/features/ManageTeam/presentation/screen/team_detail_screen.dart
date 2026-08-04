import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/role_team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/async_ui.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/assign_user_team_provider.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/create_role_team_provider.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/get_team_detail_provider.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/get_team_roles_provider.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/leave_team_provider.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/remove_role_team_provider.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/search_connection_user_provider.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/screen/team_detail_page.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/widget/select_user_role_dialog.dart';

class TeamDetailScreen extends ConsumerStatefulWidget {
  final int teamId;
  const TeamDetailScreen({super.key, required this.teamId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TeamDetailScreenState();
}

class _TeamDetailScreenState extends ConsumerState<TeamDetailScreen> {
  // create state for input assign user to team
  String userId = "";

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

    // listne to search connection user
    ref.listen<AsyncValue<List<UserModel>?>>(
      searchConnectionUserProviderProvider,
      (prev, next) {
        next.onSearchConnection(context, ref);
      },
    );

    // listen to assign user to team
    ref.listen<AsyncValue<UserModel?>>(assignUserTeamProviderProvider, (
      prev,
      next,
    ) {
      next.onAssignUserTeam(context, ref, widget.teamId);
    });

    // listen to get team roles
    ref.listen<AsyncValue<List<RoleTeamEntity>?>>(
      getTeamRolesProviderProvider,
      (prev, next) {
        next.onGetTeamRoles(context, ref, (data) {
          // show dialog to select roles
          showDialog(
            context: context,
            builder: (context) {
              return SelectUserRoleDialog(
                teamRolesList: data,
                onSelectRole: (roleId) {
                  // pop current select role
                  print("Pop the selected dialog");
                  if (context.canPop()) {
                    context.pop();
                  }

                  // assign user to team
                  print("Init search...");
                  ref
                      .read(assignUserTeamProviderProvider.notifier)
                      .assigUserToTeam(
                        userId: userId,
                        teamId: widget.teamId,
                        teamRoleId: roleId,
                      );
                },
              );
            },
          );
        });
      },
    );

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
                  onSelectUser: (selectedUserId) {
                    userId = selectedUserId;

                    // pop the current dialog
                    if (context.canPop()) {
                      context.pop();
                    }

                    // init search of roles
                    ref
                        .read(getTeamRolesProviderProvider.notifier)
                        .getTeamRoles(teamId: widget.teamId);
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
