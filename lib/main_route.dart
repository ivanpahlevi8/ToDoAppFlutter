import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/features/Authentication/auth_route.dart';
import 'package:to_do_app_flutter/features/Authentication/presentation/controller/login_user_provider.dart';
import 'package:to_do_app_flutter/features/Home/presentation/screen/home_screen.dart';
import 'package:to_do_app_flutter/features/OnBoarding/onboard_route.dart';
import 'package:to_do_app_flutter/features/OnBoarding/presentation/controller/on_board_local_provider.dart';

final routerProvider = Provider.autoDispose<GoRouter>((ref) {
  return GoRouter(
    // Force the entry point to be /splash while Riverpod initializes
    initialLocation: '/onboard',

    routes: [
      onBoardRoutes,
      authPackageRoutes,
      ShellRoute(
        builder: (context, state, child) {
          return Scaffold(
            appBar: AppBar(title: const Text("")),
            drawer: Drawer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: const DrawerHeader(
                          decoration: BoxDecoration(color: Colors.blue),
                          child: Text(
                            'To Do App',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      padding: .zero,
                      children: <Widget>[
                        ListTile(
                          leading: const Icon(Icons.message),
                          title: const Text('Messages'),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: const Icon(Icons.account_circle),
                          title: const Text('Profile'),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: const Icon(Icons.settings),
                          title: const Text('Settings'),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Text("version 1.0.0.0 | by ivan")],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: child,
          );
        },
        routes: [
          GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
        ],
      ),
    ],

    redirect: (context, state) {
      final onboardState = ref.read(onBoardLocalProviderProvider);
      final loginState = ref.read(loginUserProviderProvider);

      return authRedirectGuard(context, state, onboardState, loginState);
    },
  );
});

String? authRedirectGuard(
  BuildContext context,
  GoRouterState state,
  AsyncValue<bool> onboardState,
  AsyncValue<bool> loginState,
) {
  final currentPath = state.uri.path;

  if (onboardState.isLoading) {
    return null;
  }

  // get status for is on boarding
  final isUserOnBoarding =
      onboardState.whenOrNull(
        data: (hasOnBoard) {
          return hasOnBoard;
        },
      ) ??
      false;

  // get status of is login
  final isUserLogin =
      loginState.whenOrNull(
        data: (isLogin) {
          return isLogin;
        },
      ) ??
      false;

  // check condition for route, where refirect occured on onboard and login
  final isOnBoardRoute = currentPath == "/onboard";
  final isOnLoginRoute = currentPath == "/login";

  // check for status
  if (!isUserOnBoarding && isOnBoardRoute) {
    // user is not yet boarding
    return "/onboard";
  } else if (isUserOnBoarding && !isUserLogin) {
    // user in on boarding but not yet login
    return "/login";
  } else if ((isUserOnBoarding && isUserLogin) &&
      (isOnBoardRoute || isOnLoginRoute)) {
    // user is on boarding and login
    return "/home";
  } else {
    return null;
  }
}
