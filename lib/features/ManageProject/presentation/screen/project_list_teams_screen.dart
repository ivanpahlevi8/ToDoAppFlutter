import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/project_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/presentation/async_ui.dart';
import 'package:to_do_app_flutter/features/ManageProject/presentation/controller/create_project_team_provider.dart';
import 'package:to_do_app_flutter/features/ManageProject/presentation/controller/delete_project_provider.dart';
import 'package:to_do_app_flutter/features/ManageProject/presentation/controller/get_project_team_provider.dart';
import 'package:to_do_app_flutter/features/ManageProject/presentation/widget/project_item_widget.dart';

class ProjectListTeamsScreen extends ConsumerStatefulWidget {
  final int teamId;
  const ProjectListTeamsScreen({super.key, required this.teamId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProjectListTeamsScreenState();
}

class _ProjectListTeamsScreenState
    extends ConsumerState<ProjectListTeamsScreen> {
  @override
  void initState() {
    // init state to get all project within team
    Future.microtask(() {
      ref
          .read(getProjectTeamProviderProvider.notifier)
          .getAllProjectByTeam(teamId: widget.teamId);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // watch get project team provider
    final getProjectTeamProvider = ref.watch(getProjectTeamProviderProvider);

    // listen to create project provider
    ref.listen<AsyncValue<String?>>(createProjectTeamProviderProvider,
        (prev, next) {
      next.onCreateProject(context, ref, widget.teamId);
    });

    // listen to delete project provider
    ref.listen<AsyncValue<String?>>(deleteProjectProviderProvider,
        (prev, next) {
      next.onDeleteProject(context, ref, widget.teamId);
    });

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: getProjectTeamProvider.when(data: (data) {
            if (data == null) {
              // show circular loading
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            // return data
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                // get single data
                ProjectEntity getProject = data[index];

                // return component
                return ProjectItemWIdget(projectEntity: getProject);
              },
            );
          }, error: (error, stackTrace) {
            return Center(
              child: Text("${error.toString()}, ${stackTrace.toString()}"),
            );
          }, loading: () {
            // return loading view
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
        )
      ],
    );
  }
}
