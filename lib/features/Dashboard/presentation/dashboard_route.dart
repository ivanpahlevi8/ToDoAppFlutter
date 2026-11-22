import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/page/dashboard_page.dart';

final RouteBase dashboardRoute = ShellRoute(
  builder: (context, state, child) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Home",
        style: TextStyle(
          color: customColor.dashboardTextPrimary!,
          fontSize: 22,
          fontWeight: FontWeight.w900,
        ),
      )),
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
                padding: EdgeInsets.zero,
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.people),
                    title: const Text('Your Teams'),
                    onTap: () {
                      context.pop();
                      context.push("/get-all-teams");
                    },
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
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Divider(thickness: 1.2, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: const Icon(Icons.person),
                        title: const Text('Search People'),
                        onTap: () {
                          // unshow drawer
                          if (context.canPop()) {
                            context.pop();
                          }
                          context.push("/search-user");
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.people_alt_rounded),
                        title: const Text('Manage Connection'),
                        onTap: () {
                          // unshow drawer
                          if (context.canPop()) {
                            context.pop();
                          }
                          context.push("/connection-byuser");
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.people_alt_rounded),
                        title: const Text('Performance'),
                        onTap: () {
                          // unshow drawer
                          if (context.canPop()) {
                            context.pop();
                          }
                          context.push("/performance");
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
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
      body: child,
    );
  },
  routes: [
    GoRoute(path: '/home', builder: (context, state) => DashboardPage()),
  ],
);
