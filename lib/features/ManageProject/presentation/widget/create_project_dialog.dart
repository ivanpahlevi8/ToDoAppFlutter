import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageProject/data/mapper/project_mapper.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/create_project_entity.dart';
import 'package:to_do_app_flutter/features/ManageProject/presentation/controller/create_project_team_provider.dart';

class CreateProjectDialog extends ConsumerWidget {
  final int teamId;
  const CreateProjectDialog({super.key, required this.teamId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    // create input
    TextEditingController projectName = TextEditingController(text: "");
    TextEditingController projectDescription = TextEditingController(
      text: "",
    );

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      backgroundColor: customColor.colorPalette1DialogBackground,
      shadowColor: Colors.grey.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Create New Team",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: customColor.textTitle!,
              ),
            ),
            SizedBox(height: 18),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: projectName,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                      ),
                      labelText: "Project Name",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 1.3,
                        ),
                      ),
                      // Border state when the user is actively typing in the field
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                      // Border state when the field validator fails
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: projectDescription,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                    maxLines: 5,
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                      ),
                      labelText: "Project Description",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 1.3,
                        ),
                      ),
                      // Border state when the user is actively typing in the field
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                      // Border state when the field validator fails
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 14),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: customColor.excellentStart!,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(12)),
                ),
                minimumSize: Size.zero,
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              ),
              onPressed: () {
                // pop dialog
                if (context.canPop()) {
                  context.pop();
                }

                // create project entity
                CreateProjectEntity createProjectEntity = CreateProjectEntity(
                    projectName: projectName.text,
                    projectDescription: projectDescription.text,
                    projectUserLeadId: "",
                    projectStatus: "",
                    projectTeamId: teamId);

                // create project
                ref
                    .read(createProjectTeamProviderProvider.notifier)
                    .createProjectTeam(createProject: createProjectEntity);
              },
              child: Text(
                "Create Team",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: customColor.textTitle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
