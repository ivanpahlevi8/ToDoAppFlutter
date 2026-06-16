import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/features/Authentication/auth_route.dart';
import 'package:to_do_app_flutter/features/Authentication/presentation/controller/login_user_provider.dart';
import 'package:to_do_app_flutter/features/OnBoarding/onboard_route.dart';
import 'package:to_do_app_flutter/features/OnBoarding/presentation/controller/on_board_local_provider.dart';

final routerProvider = Provider.autoDispose<GoRouter>((ref) {
  return GoRouter(
    // Force the entry point to be /splash while Riverpod initializes
    initialLocation: '/onboard',

    routes: [onBoardRoutes, authPackageRoutes],

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
