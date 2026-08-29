import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageProject/presentation/screen/project_detail_screen.dart';
import 'package:to_do_app_flutter/features/ManageProject/presentation/screen/project_list_teams_screen.dart';
import 'package:to_do_app_flutter/features/ManageProject/presentation/widget/create_project_dialog.dart';

final RouteBase manageProjectRoute = ShellRoute(
  builder: (context, state, child) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text(
          "Team Projects",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: customColor.textTitle!,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      floatingActionButton: IconButton(
          onPressed: () {
            // get team id from route
            String getTeamId = state.pathParameters["teamId"] ?? "0";

            // show create project dialog
            showDialog(
                context: context,
                builder: (context) {
                  return CreateProjectDialog(
                    teamId: int.parse(getTeamId),
                  );
                });
          },
          icon: Icon(Icons.add)),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: child),
          ],
        ),
      ),
    );
  },
  routes: [
    GoRoute(
      path: "/team-project/:teamId",
      builder: (context, state) {
        final id = state.pathParameters["teamId"] ?? "0";
        return ProjectListTeamsScreen(teamId: int.parse(id));
      },
    ),
    GoRoute(
        path: "/project-detail/:projectId",
        builder: (context, state) {
          final id = state.pathParameters["projectId"] ?? "0";
          return ProjectDetailScreen(projectId: int.parse(id));
        })
  ],
);
