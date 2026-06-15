import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/features/OnBoarding/presentation/screen/on_board_screen.dart';

// 1. Expose the raw list of routes
final RouteBase onBoardRoutes = ShellRoute(
  builder: (context, state, child) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: child,
    );
  },
  routes: [
    GoRoute(path: '/onboard', builder: (context, state) => OnBoardScreen()),
  ],
);
