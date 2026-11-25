import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/core/widget/app_drawer.dart';
import 'package:to_do_app_flutter/core/widget/app_shell_scaffold.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/page/dashboard_page.dart';

final RouteBase dashboardRoute = ShellRoute(
  builder: (context, state, child) {
    return AppShellScaffold(
      title: "Home",
      destination: AppDrawerDestination.home,
      body: child,
    );
  },
  routes: [
    GoRoute(path: '/home', builder: (context, state) => DashboardPage()),
  ],
);
