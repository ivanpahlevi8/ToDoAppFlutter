import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/features/OnBoarding/auth_route.dart';
import 'package:to_do_app_flutter/features/OnBoarding/presentation/controller/on_board_local_provider.dart';

final routerProvider = Provider.autoDispose<GoRouter>((ref) {
  // 2. Watch the onboarding state change here

  final onboardState = ref.watch(onBoardLocalProviderProvider);

  return GoRouter(
    // Force the entry point to be /splash while Riverpod initializes
    initialLocation: '/onboard',

    // Rerun the routing logic whenever the onboarding status shifts
    refreshListenable: ValueNotifier(onboardState),

    routes: [authPackageRoutes],

    // 5. Execute the package-level redirect rule
    redirect: (context, state) {
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

      // If they haven't finished onboarding, force them to stay there
      if (!hasCompletedOnboarding) {
        return isGoingToOnboarding ? null : '/onboard';
      }

      // If they finished onboarding but the app tries to show the onboarding screen again,
      // redirect them safely to login
      if (hasCompletedOnboarding && isGoingToOnboarding) {
        return '/login';
      }

      return null; // Let them proceed to their destination (like Home '/')
    },
    orElse: () => null,
  );
}
