import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/extensions/snackbar_extension.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/core/widget/custom_loading_dialog.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/role_team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/get_team_detail_provider.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/controller/get_teams_byuserid_provider.dart';

extension CreateTeamExtension on AsyncValue<TeamEntity?> {
  Future<void> onCreateTeam(BuildContext context, WidgetRef ref) async {
    when(
      data: (data) {
        // pop loading dialog
        if (data != null) {
          if (context.canPop()) {
            context.pop();
          }

          // invalidate the get all team
          ref
              .read(getTeamsByuseridProviderProvider.notifier)
              .getTeamsByUserId();

          // show success dialog
          context.showSuccessSnackBar(
            message: "Success create team : ${data.teamName}",
          );
        }
      },
      error: (error, stackTrace) {
        // pop loading dialog
        if (context.canPop()) {
          context.pop();
        }

        // show error dialog
        context.showErrorSnackBar(
          message: "Error happen : ${error.toString()}",
        );
      },
      loading: () {
        // show loading
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return const CustomLoadingDialog();
          },
        );
      },
    );
  }
}

extension ActionTeamExtension on AsyncValue<String?> {
  Future<void> onDeleteTeam(BuildContext context, WidgetRef ref) async {
    when(
      data: (data) {
        // pop loading dialog
        if (data != null) {
          if (context.canPop()) {
            context.pop();
          }

          // invalidate the get all team
          ref
              .read(getTeamsByuseridProviderProvider.notifier)
              .getTeamsByUserId();

          // show success dialog
          context.showSuccessSnackBar(message: data);
        }
      },
      error: (error, stackTrace) {
        // pop loading dialog
        if (context.canPop()) {
          context.pop();
        }

        // show error dialog
        context.showErrorSnackBar(
          message: "Error happen : ${error.toString()}",
        );
      },
      loading: () {
        // show loading
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return const CustomLoadingDialog();
          },
        );
      },
    );
  }

  Future<void> onLeaveTeam(BuildContext context, WidgetRef ref) async {
    when(
      data: (data) {
        // pop loading dialog
        if (data != null) {
          if (context.canPop()) {
            context.pop();
          }

          // invalidate the get all team
          ref
              .read(getTeamsByuseridProviderProvider.notifier)
              .getTeamsByUserId();

          // show success dialog
          context.showSuccessSnackBar(message: data);
        }
      },
      error: (error, stackTrace) {
        // pop loading dialog
        if (context.canPop()) {
          context.pop();
        }

        // show error dialog
        context.showErrorSnackBar(
          message: "Error happen : ${error.toString()}",
        );
      },
      loading: () {
        // show loading
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return const CustomLoadingDialog();
          },
        );
      },
    );
  }

  Future<void> onLeaveTeamDetail(BuildContext context, WidgetRef ref) async {
    when(
      data: (data) {
        // pop loading dialog
        if (data != null) {
          if (context.canPop()) {
            context.pop();
          }

          // pop back to previous page
          if (context.canPop()) {
            context.pop();
          }

          // invalidate the get all team
          ref
              .read(getTeamsByuseridProviderProvider.notifier)
              .getTeamsByUserId();

          // show success dialog
          context.showSuccessSnackBar(message: "Success leave from group");
        }
      },
      error: (error, stackTrace) {
        // pop loading dialog
        if (context.canPop()) {
          context.pop();
        }

        // show error dialog
        context.showErrorSnackBar(
          message: "Error happen : ${error.toString()}",
        );
      },
      loading: () {
        // show loading
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return const CustomLoadingDialog();
          },
        );
      },
    );
  }
}

extension CreateRoleTeamExtension on AsyncValue<RoleTeamEntity?> {
  Future<void> onCreateTeam(BuildContext context, WidgetRef ref) async {
    when(
      data: (data) {
        if (data != null) {
          // pop the loading dialog
          if (context.canPop()) {
            context.pop();
          }

          // invalidate the get all team
          ref
              .read(getTeamDetailProviderProvider.notifier)
              .getTeamDetail(teamId: data.teamId);

          // show success dialog
          context.showSuccessSnackBar(
            message: "Success create role team : ${data.teamRoleName}",
          );
        }
      },
      error: (error, stackTrace) {
        // pop loading dialog
        if (context.canPop()) {
          context.pop();
        }

        // show error dialog
        context.showErrorSnackBar(
          message: "Error happen : ${error.toString()}",
        );
      },
      loading: () {
        // show loading
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return const CustomLoadingDialog();
          },
        );
      },
    );
  }
}

extension RemoveTeamExtension on AsyncValue<String?> {
  Future<void> onRemoveRoleTeam(
    BuildContext context,
    WidgetRef ref,
    int teamId,
  ) async {
    when(
      data: (data) {
        if (data != null) {
          // pop the loading dialog
          if (context.canPop()) {
            context.pop();
          }

          // invalidate the get all team
          ref
              .read(getTeamDetailProviderProvider.notifier)
              .getTeamDetail(teamId: teamId);

          // show success dialog
          context.showSuccessSnackBar(message: data);
        }
      },
      error: (error, stackTrace) {
        // pop loading dialog
        if (context.canPop()) {
          context.pop();
        }

        // show error dialog
        context.showErrorSnackBar(
          message: "Error happen : ${error.toString()}",
        );
      },
      loading: () {
        // show loading
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return const CustomLoadingDialog();
          },
        );
      },
    );
  }
}

extension SearchConnectionConnection on AsyncValue<List<UserModel>?> {
  Future<void> onSearchConnection(BuildContext context, WidgetRef ref) async {
    when(
      data: (data) {
        if (data != null) {
          // pop the loading dialog
          if (context.canPop()) {
            context.pop();
          }
        }
      },
      error: (error, stackTrace) {
        // pop loading dialog
        if (context.canPop()) {
          context.pop();
        }

        // show error dialog
        context.showErrorSnackBar(
          message: "Error happen : ${error.toString()}",
        );
      },
      loading: () {
        // show loading
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return const CustomLoadingDialog();
          },
        );
      },
    );
  }
}

extension GetTeamRolesExtension on AsyncValue<List<RoleTeamEntity>?> {
  Future<void> onGetTeamRoles(
    BuildContext context,
    WidgetRef ref,
    Function(List<RoleTeamEntity>) showSelectTeamRoleDialog,
  ) async {
    when(
      data: (data) {
        if (data != null) {
          // pop the loading dialog
          if (context.canPop()) {
            context.pop();
          }

          // show dialog
          showSelectTeamRoleDialog(data);
        }
      },
      error: (error, stackTrace) {
        // pop loading dialog
        if (context.canPop()) {
          context.pop();
        }

        // show error dialog
        context.showErrorSnackBar(
          message: "Error happen : ${error.toString()}",
        );
      },
      loading: () {
        // show loading
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return const CustomLoadingDialog();
          },
        );
      },
    );
  }
}

extension AssignUserTeamExtension on AsyncValue<UserModel?> {
  Future<void> onAssignUserTeam(
    BuildContext context,
    WidgetRef ref,
    int teamId,
  ) async {
    when(
      data: (data) {
        if (data != null) {
          // pop the loading dialog
          if (context.canPop()) {
            context.pop();
          }

          // invalidate team detail
          ref
              .read(getTeamDetailProviderProvider.notifier)
              .getTeamDetail(teamId: teamId);

          context.showSuccessSnackBar(
            message: "Success assign team : ${data.userName}",
          );
        }
      },
      error: (error, stackTrace) {
        // pop loading dialog
        if (context.canPop()) {
          context.pop();
        }

        // show error dialog
        context.showErrorSnackBar(
          message: "Error happen : ${error.toString()}",
        );
      },
      loading: () {
        // show loading
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return const CustomLoadingDialog();
          },
        );
      },
    );
  }
}
