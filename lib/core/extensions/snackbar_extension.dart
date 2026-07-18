import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';

extension SnackBarExtension on BuildContext {
  // 1. THE ERROR SNACKBAR
  void showErrorSnackBar({required String message}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.redAccent,
        behavior: SnackBarBehavior.floating,
        dismissDirection:
            DismissDirection.horizontal, // Usually better for bottom snacks
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

        // THE FIX: Provide a standard margin. Flutter will automatically
        // add extra padding to float it above your FAB!
        margin: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  // 2. THE SUCCESS SNACKBAR
  void showSuccessSnackBar({required String message}) {
    final customColors = Theme.of(this).extension<AppCustomColors>();

    ScaffoldMessenger.of(this).hideCurrentSnackBar();

    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(
            color: customColors?.successDialogText ?? Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor:
            customColors?.successDialogBackground ?? Colors.green.shade700,
        behavior: SnackBarBehavior.floating,
        dismissDirection:
            DismissDirection.horizontal, // Usually better for bottom snacks
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

        // THE FIX: Provide a standard margin. Flutter will automatically
        // add extra padding to float it above your FAB!
        margin: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
