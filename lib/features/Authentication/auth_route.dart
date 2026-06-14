import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/features/Authentication/presentation/login_page.dart';

// 1. Expose the raw list of routes
final RouteBase authPackageRoutes = ShellRoute(
  builder: (context, state, child) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: child,
    );
  },
  routes: [
    GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
    // GoRoute(
    //   path: '/register',
    //   builder: (context, state) => const RegisterScreen(),
    // ),
  ],
);
