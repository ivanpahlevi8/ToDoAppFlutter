import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

// You can later update this to read/write to SharedPreferences
// so it remembers the user's choice when they restart the app!
@riverpod
class ThemeModeController extends _$ThemeModeController {
  @override
  ThemeMode build() {
    return ThemeMode.system; // Defaults to following the phone's OS setting
  }

  void toggleTheme(bool isDark) {
    state = isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void useSystemTheme() {
    state = ThemeMode.system;
  }
}
