import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/extensions/snackbar_extension.dart';
import 'package:to_do_app_flutter/core/widget/custom_loading_dialog.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_entity.dart';
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

extension DeleteTeamExtension on AsyncValue<String?> {
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
}
