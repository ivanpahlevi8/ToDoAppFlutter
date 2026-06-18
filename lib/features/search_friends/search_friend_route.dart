import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/features/search_friends/presentation/screen/search_user_screen.dart';

// 1. Expose the raw list of routes
final RouteBase searchFriendsRoute = ShellRoute(
  builder: (context, state, child) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: child,
    );
  },
  routes: [
    GoRoute(
      path: '/search-user',
      builder: (context, state) => SearchUserScreen(),
    ),
  ],
);
