import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';

extension SnackBarExtension on BuildContext {
  // 1. THE ERROR SNACKBAR
  void showErrorSnackBar({required String message}) {
    // Grab your custom colors from the theme
    final customColors = Theme.of(this).extension<AppCustomColors>();

    // This clears any currently showing snackbars so they don't pile up!
    ScaffoldMessenger.of(this).hideCurrentSnackBar();

    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(
            color: customColors?.errorDialogText ?? Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        // Uses your specific error red, with a fallback just in case
        backgroundColor: customColors?.errorColor ?? Colors.red.shade800,
        behavior: SnackBarBehavior
            .floating, // Makes it float above the bottom of the screen
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.all(16),
        duration: const Duration(seconds: 4),
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
        // Uses your specific success green
        backgroundColor:
            customColors?.successDialogBackground ?? Colors.green.shade700,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.all(16),
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
