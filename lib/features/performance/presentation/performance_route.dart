import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/core/widget/app_drawer.dart';
import 'package:to_do_app_flutter/core/widget/app_shell_scaffold.dart';
import 'package:to_do_app_flutter/features/performance/presentation/screen/performance_screen.dart';

final RouteBase performanceRoute = ShellRoute(
  builder: (context, state, child) {
    return AppShellScaffold(
      title: "Performance",
      destination: AppDrawerDestination.performance,
      body: SafeArea(
        child: Column(children: [Expanded(child: child)]),
      ),
    );
  },
  routes: [
    GoRoute(
      path: "/performance",
      builder: (context, state) => PerformanceScreen(),
    ),
  ],
);
