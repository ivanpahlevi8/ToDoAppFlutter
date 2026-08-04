import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/role_team_entity.dart';

class SelectRoleItem extends StatelessWidget {
  final RoleTeamEntity roleEntity;
  final Function(int) onSelectRole;
  const SelectRoleItem({
    super.key,
    required this.roleEntity,
    required this.onSelectRole,
  });

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
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
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
            offset: Offset(1, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              roleEntity.teamRoleName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: customColor.textTitle!,
              ),
            ),
          ),
          SizedBox(width: 8),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: customColor.excellentStart!,
              minimumSize: Size.zero,
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
              ),
            ),
            onPressed: () {
              // on select role
              onSelectRole(roleEntity.teamRoleId);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle,
                  fontWeight: FontWeight.w900,
                  color: customColor.textTitle!,
                  size: 18,
                ),
                SizedBox(height: 2),
                Text(
                  "add",
                  style: TextStyle(
                    fontSize: 12,
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
