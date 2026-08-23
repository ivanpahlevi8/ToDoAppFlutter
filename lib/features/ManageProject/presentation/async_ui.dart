import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/core/extensions/snackbar_extension.dart';
import 'package:to_do_app_flutter/core/widget/custom_loading_dialog.dart';
import 'package:to_do_app_flutter/features/ManageProject/presentation/controller/get_project_team_provider.dart';

extension ActionProjectExtension on AsyncValue<String?> {
  Future<void> onCreateProject(
      BuildContext context, WidgetRef ref, int teamId) async {
    when(data: (data) {
      if (data != null) {
        // pop up loading dialog
        if (context.canPop()) {
          context.pop();
        }

        // invalidate get all project within team
        ref
            .read(getProjectTeamProviderProvider.notifier)
            .getAllProjectByTeam(teamId: teamId);

        // show success snackbar
        context.showSuccessSnackBar(message: data);
      }
    }, error: (error, stackTrace) {
      // pop up loading dialog
      if (context.canPop()) {
        context.pop();
      }

      // show error message
      context.showErrorSnackBar(
          message:
              "Error Happen : ${error.toString()}, ${stackTrace.toString()}");
    }, loading: () {
      // show loading
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return const CustomLoadingDialog();
        },
      );
    });
  }

  Future<void> onDeleteProject(
      BuildContext context, WidgetRef ref, int teamId) async {
    when(data: (data) {
      // check on data
      if (data != null) {
        // pop loading dialog
        if (context.canPop()) {
          context.pop();
        }

        // invalidate get all project
        ref
            .read(getProjectTeamProviderProvider.notifier)
            .getAllProjectByTeam(teamId: teamId);

        // show success message
        context.showSuccessSnackBar(message: data);
      }
    }, error: ((error, stackTrace) {
      // pop loading dialog
      if (context.canPop()) {
        context.pop();
      }

      // show error message
      context.showErrorSnackBar(
          message: "Error : ${error.toString()}, ${stackTrace.toString()}");
    }), loading: () {
      // show loading
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return const CustomLoadingDialog();
        },
      );
    });
  }
}
