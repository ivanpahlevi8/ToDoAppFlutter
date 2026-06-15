import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';

extension SnackBarExtension on BuildContext {
  // 1. THE ERROR SNACKBAR
  void showErrorSnackBar({required String message}) {
    // 1. Get safe area top padding (so it sits below the camera notch)
    final topPadding = MediaQuery.of(this).padding.top;
    final screenHeight = MediaQuery.of(this).size.height;

    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.redAccent,
        behavior: SnackBarBehavior.floating,
        dismissDirection: DismissDirection.up,
        margin: EdgeInsets.only(
          top: 0,
          left: 16,
          right: 16,
          // Total screen height minus height of snackbar and top safe area status bar
          bottom: screenHeight - topPadding - 80,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  // 2. THE SUCCESS SNACKBAR
  void showSuccessSnackBar({required String message}) {
    final customColors = Theme.of(this).extension<AppCustomColors>();
    final topPadding = MediaQuery.of(this).padding.top;
    final screenHeight = MediaQuery.of(this).size.height;

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
        dismissDirection: DismissDirection.up,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: EdgeInsets.only(
          top: 0,
          left: 16,
          right: 16,
          // Total screen height minus height of snackbar and top safe area status bar
          bottom: screenHeight - topPadding - 80,
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
