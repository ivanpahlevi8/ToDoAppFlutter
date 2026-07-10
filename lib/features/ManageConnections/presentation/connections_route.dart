import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/screen/get_connection_user.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/screen/get_request_connection_byuser_screen.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/screen/get_request_connection_reject_byuser_screen.dart';
import 'package:to_do_app_flutter/features/ManageConnections/presentation/screen/get_request_connection_touser_screen.dart';

final RouteBase connectionsRoute = ShellRoute(
  builder: (context, state, child) {
    // check current route position
    final currentPath = state.uri.path;

    int currRoutePosition = 0;

    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    switch (currentPath) {
      case '/connection-byuser':
        currRoutePosition = 0;
        break;
      case '/connection-touser':
        currRoutePosition = 1;
        break;
      case '/connection-reject-byuser':
        currRoutePosition = 2;
        break;
      case '/connection-user':
        currRoutePosition = 3;
        break;
      default:
        currRoutePosition = 0;
        break;
    }

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go("/home");
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: currRoutePosition == 0
                            ? customColor.selectedPagerIndicator
                            : customColor.unselectedPagerIndicator,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                      onPressed: () {
                        context.go('/connection-byuser');
                      },
                      child: Text(
                        "Connection By User",
                        style: TextStyle(
                          color: customColor.textTitle,
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: currRoutePosition == 1
                            ? customColor.selectedPagerIndicator
                            : customColor.unselectedPagerIndicator,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                      onPressed: () {
                        context.go('/connection-touser');
                      },
                      child: Text(
                        "Connection To User",
                        style: TextStyle(
                          color: customColor.textTitle,
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: currRoutePosition == 2
                            ? customColor.selectedPagerIndicator
                            : customColor.unselectedPagerIndicator,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                      onPressed: () {
                        context.go('/connection-reject-byuser');
                      },
                      child: Text(
                        "Connection Reject By User",
                        style: TextStyle(
                          color: customColor.textTitle,
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: currRoutePosition == 3
                            ? customColor.selectedPagerIndicator
                            : customColor.unselectedPagerIndicator,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                      onPressed: () {
                        context.go('/connection-user');
                      },
                      child: Text(
                        "User Connections",
                        style: TextStyle(
                          color: customColor.textTitle,
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: child),
          ],
        ),
      ),
    );
  },
  routes: [
    GoRoute(
      path: '/connection-byuser',
      builder: (context, state) => GetRequestConnectionByuserScreen(),
    ),
    GoRoute(
      path: '/connection-touser',
      builder: (context, state) => GetRequestConnectionTouserScreen(),
    ),
    GoRoute(
      path: '/connection-reject-byuser',
      builder: (context, state) => GetRequestConnectionRejectByuserScreen(),
    ),
    GoRoute(
      path: '/connection-user',
      builder: (context, state) => GetConnectionUser(),
    ),
  ],
);
