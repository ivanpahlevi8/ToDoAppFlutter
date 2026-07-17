import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/screen/team_list_screen.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/widget/create_team_dialog.dart';

final RouteBase teamsRoute = ShellRoute(
  builder: (context, state, child) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

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
            context.go("/home");
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      floatingActionButton: FloatingActionButton(
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
      ),
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
  ],
);
