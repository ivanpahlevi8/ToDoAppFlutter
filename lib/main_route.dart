import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/features/Authentication/auth_route.dart';
import 'package:to_do_app_flutter/features/OnBoarding/auth_route.dart';
import 'package:to_do_app_flutter/features/OnBoarding/presentation/controller/on_board_local_provider.dart';

final routerProvider = Provider.autoDispose<GoRouter>((ref) {
  return GoRouter(
    // Force the entry point to be /splash while Riverpod initializes
    initialLocation: '/onboard',

    routes: [onBoardRoutes, authPackageRoutes],

    redirect: (context, state) {
      final onboardState = ref.read(onBoardLocalProviderProvider);
      return authRedirectGuard(context, state, onboardState);
    },
  );
});

String? authRedirectGuard(
  BuildContext context,
  GoRouterState state,
  AsyncValue<bool> onboardState,
) {
  final currentPath = state.uri.path;

  if (onboardState.isLoading) {
    return null;
  }

  return onboardState.maybeWhen(
    data: (hasCompletedOnboarding) {
      final isGoingToOnboarding = currentPath == '/onboard';

      if (!hasCompletedOnboarding) {
        return isGoingToOnboarding ? null : '/onboard';
      }

      if (hasCompletedOnboarding && isGoingToOnboarding) {
        return '/login';
      }

      return null;
    },
    orElse: () => null,
  );
}
