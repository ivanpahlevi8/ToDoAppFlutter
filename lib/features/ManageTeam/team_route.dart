import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/screen/team_detail_screen.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/screen/team_list_screen.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/widget/create_team_dialog.dart';

final RouteBase teamsRoute = ShellRoute(
  builder: (context, state, child) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    String currentRoute = state.uri.path;

    int currentRoutePosition = 0;

    switch (currentRoute) {
      case '/get-all-team':
        currentRoutePosition = 0;
        break;
      default:
        currentRoutePosition = 1;
        break;
    }

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text(
          "Manage Teams",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: customColor.textTitle!,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            switch (currentRoutePosition) {
              case 0:
                context.go("/home");
                break;
              case 1:
                context.pop();
            }
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      floatingActionButton: currentRoutePosition == 0
          ? FloatingActionButton(
              elevation: 8,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CreateTeamDialog();
                  },
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    size: 24,
                    fontWeight: FontWeight.w900,
                    color: customColor.textTitle!,
                  ),
                  SizedBox(height: 4),
                  Text(
                    "add team",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w900,
                      color: customColor.textTitle!,
                    ),
                  ),
                ],
              ),
            )
          : null,
      body: SafeArea(
        child: Column(children: [Expanded(child: child)]),
      ),
    );
  },
  routes: [
    GoRoute(
      path: "/get-all-teams",
      builder: (context, state) => TeamListScreen(),
    ),
    GoRoute(
      path: "/team-detail/:teamId",
      builder: (context, state) {
        final id = state.pathParameters["teamId"] ?? "0";
        return TeamDetailScreen(teamId: int.parse(id));
      },
    ),
  ],
);
