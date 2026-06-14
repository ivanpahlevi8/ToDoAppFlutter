import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/core/theme/app_theme.dart';
import 'package:to_do_app_flutter/core/theme/theme_provider.dart';
import 'package:to_do_app_flutter/features/OnBoarding/presentation/controller/on_board_local_provider.dart';
import 'package:to_do_app_flutter/main_route.dart';

class MainView extends ConsumerWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onboardState = ref.watch(onBoardLocalProviderProvider);

    if (!onboardState.isLoading) {
      FlutterNativeSplash.remove();
    }

    // The exact moment it finishes loading or hits an error, dismiss the native splash!
    ref.listen<AsyncValue<bool>>(onBoardLocalProviderProvider, (
      previous,
      next,
    ) {
      if (next.hasValue || next.hasError) {
        FlutterNativeSplash.remove();
      }
    });

    // 7. Watch your master router provider configuration
    final GoRouter router = ref.watch(routerProvider);

    final themeMode = ref.watch(themeModeControllerProvider);

    // 8. Return MaterialApp.router instead of the standard MaterialApp
    return MaterialApp.router(
      title: 'My Modular App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      routerConfig: router,
    );
  }
}
