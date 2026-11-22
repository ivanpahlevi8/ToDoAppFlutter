import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';

class AppTheme {
  // 1. LIGHT THEME
  static ThemeData get lightTheme =>
      _buildTheme(AppCustomColors.light, Brightness.light);

  // 2. DARK THEME
  static ThemeData get darkTheme =>
      _buildTheme(AppCustomColors.dark, Brightness.dark);

  // Both themes are built from the same dashboard colors in AppCustomColors,
  // so light and dark only differ by which color set is passed in.
  static ThemeData _buildTheme(AppCustomColors colors, Brightness brightness) {
    final Color background = colors.dashboardBackgroundColor!;

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: ColorScheme.fromSeed(
        seedColor: colors.dashboardAccent!,
        brightness: brightness,
        primary: colors.dashboardAccent!,
        onPrimary: colors.dashboardOnAccent!,
        surface: background,
        onSurface: colors.dashboardTextPrimary!,
      ),
      scaffoldBackgroundColor: background,
      canvasColor: background,
      cardColor: colors.dashboardCardColor!,
      dividerColor: colors.dashboardDividerColor!,
      appBarTheme: AppBarTheme(
        backgroundColor: background,
        foregroundColor: colors.dashboardTextPrimary!,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: colors.dashboardDrawerColor!,
        scrimColor: colors.dashboardScrimColor!,
      ),
      dividerTheme: DividerThemeData(
        color: colors.dashboardDividerColor!,
      ),
      extensions: <ThemeExtension<dynamic>>[colors],
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
