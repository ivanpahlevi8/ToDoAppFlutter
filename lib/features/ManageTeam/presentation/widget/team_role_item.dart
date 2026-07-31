import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/role_team_entity.dart';

class TeamRoleItem extends StatelessWidget {
  final RoleTeamEntity roleTeam;
  final bool isTeamLeader;
  final Function(int) onRemoveTeamRole;
  const TeamRoleItem({
    super.key,
    required this.roleTeam,
    required this.isTeamLeader,
    required this.onRemoveTeamRole,
  });

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;
    return Container(
      width: 220,
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          colors: [
            customColor.timeLineCardColor2!,
            customColor.timeLineCardColor3!,
          ],
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.bottomRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              roleTeam.teamRoleName,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w900,
                color: customColor.textTitle!,
              ),
            ),
          ),
          if (isTeamLeader)
            TextButton(
              onPressed: () {
                onRemoveTeamRole(roleTeam.teamRoleId);
              },
              style: TextButton.styleFrom(
                backgroundColor: customColor.errorColor!,
                minimumSize: Size.zero,
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.delete,
                    fontWeight: FontWeight.w900,
                    color: customColor.textTitle!,
                    size: 20,
                  ),
                  SizedBox(height: 2),
                  Text(
                    "delete",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: customColor.textTitle!,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
