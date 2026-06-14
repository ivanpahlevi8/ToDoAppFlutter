import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';

class AppTheme {
  // You can keep deepPurple, or change this seed color to match your brand's primary color
  static const Color _primarySeed = Colors.deepPurple;

  // 1. LIGHT THEME
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _primarySeed,
        brightness: Brightness.light,
      ),

      // ---> ATTACH THE PRE-BUILT LIGHT COLORS HERE <---
      extensions: const <ThemeExtension<dynamic>>[AppCustomColors.light],
    );
  }

  // 2. DARK THEME
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _primarySeed,
        brightness: Brightness.dark,
      ),

      // ---> ATTACH THE PRE-BUILT DARK COLORS HERE <---
      extensions: const <ThemeExtension<dynamic>>[AppCustomColors.dark],
    );
  }
}

// Optional but highly recommended:
// Add this helper extension at the bottom of the file so you can
// easily access your colors in the UI using `context.customColors`
extension ThemeExtensionHelper on BuildContext {
  AppCustomColors get customColors =>
      Theme.of(this).extension<AppCustomColors>()!;
}
