import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/core/extensions/snackbar_extension.dart';
import 'package:to_do_app_flutter/core/widget/custom_loading_dialog.dart';

extension OnBoardUserExtension on AsyncValue<void> {
  Future<void> onUserOnBoard(BuildContext context, WidgetRef ref) async {
    when(
      data: (data) {
        // pop loading dialog
        if (context.canPop()) {
          context.pop();
        }

        // show success dialog
        context.showSuccessSnackBar(message: "Success On Board");

        Future.delayed(const Duration(milliseconds: 200), () {
          if (context.mounted) {
            context.go('/login');
          }
        });
      },
      error: (error, stackTrace) {
        // pop loading dialog
        if (context.canPop()) {
          context.pop();
        }

        // show error dialog
        context.showErrorSnackBar(
          message: "Error happen : ${error.toString()}, $stackTrace",
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
