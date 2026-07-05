import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:to_do_app_flutter/core/extensions/snackbar_extension.dart';
import 'package:to_do_app_flutter/core/widget/custom_loading_dialog.dart';
import 'package:to_do_app_flutter/features/ManageConnections/domain/entities/connection_view_entity.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/controller/get_request_connection%20_byuser_provider.dart';

extension RemoveConnectionExtension on AsyncValue<ConnectionViewEntity?> {
  Future<void> onRemoveConnection(BuildContext context, WidgetRef ref) async {
    when(
      data: (data) async {
        // pop loading dialog
        if (data != null) {
          if (context.canPop()) {
            context.pop();
          }

          await Future.delayed(Duration(milliseconds: 500));

          // validate again to get all request connection by user
          ref
              .read(getRequestConnectionByuserProviderProvider.notifier)
              .getRequestConnectionByUser();

          // show success dialog
          context.showSuccessSnackBar(
            message: "Unfollow ${data.userModel.userName}",
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
