import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/role_team_entity.dart';

class TeamRoleItem extends StatelessWidget {
  final RoleTeamEntity roleTeam;
  final bool isTeamLeader;
  const TeamRoleItem({
    super.key,
    required this.roleTeam,
    required this.isTeamLeader,
  });

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;
    return Container(
      width: 200,
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
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
              onPressed: () {},
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
