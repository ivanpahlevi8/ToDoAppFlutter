import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/extensions/snackbar_extension.dart';
import 'package:to_do_app_flutter/core/models/user_model.dart';
import 'package:to_do_app_flutter/core/widget/custom_loading_dialog.dart';

extension AuthUserExtension on AsyncValue<UserModel?> {
  Future<void> onUserRegister(BuildContext context, WidgetRef ref) async {
    when(
      data: (data) {
        // pop loading dialog
        if (data != null) {
          if (context.canPop()) {
            context.pop();
          }

          // show success dialog
          context.showSuccessSnackBar(
            message: "Success Register with username ${data.userName}",
          );

          Future.delayed(const Duration(milliseconds: 800), () {
            if (context.canPop()) {
              context.pop();
            }
          });
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
