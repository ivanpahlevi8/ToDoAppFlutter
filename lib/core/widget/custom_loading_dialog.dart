import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';

class CustomLoadingDialog extends StatelessWidget {
  const CustomLoadingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    // Access your custom theme colors
    final customColors = Theme.of(context).extension<AppCustomColors>();

    // PopScope prevents the user from using the Android physical back button
    // to escape the loading screen before the network request finishes!
    return PopScope(
      canPop: false,
      child: Dialog(
        backgroundColor: customColors?.loadingDialogBackground ?? Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
          child: Column(
            mainAxisSize: MainAxisSize
                .min, // Keeps the dialog tightly wrapped around its contents
            children: [
              CircularProgressIndicator(
                // Uses your custom text color for the spinner to ensure contrast
                color: customColors?.loadingDialogText ?? Colors.deepPurple,
              ),
              const SizedBox(height: 24),
              Text(
                "Please wait...",
                style: TextStyle(
                  color: customColors?.loadingDialogText ?? Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
