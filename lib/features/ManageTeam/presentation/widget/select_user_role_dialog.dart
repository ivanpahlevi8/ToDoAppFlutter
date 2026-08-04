import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/role_team_entity.dart';
import 'package:to_do_app_flutter/features/ManageTeam/presentation/widget/select_role_item.dart';

class SelectUserRoleDialog extends StatelessWidget {
  final List<RoleTeamEntity> teamRolesList;
  final Function(int) onSelectRole;
  const SelectUserRoleDialog({
    super.key,
    required this.teamRolesList,
    required this.onSelectRole,
  });

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(10.0)),
      ),
      backgroundColor: customColor.colorPalette1DialogBackground,
      insetPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      shadowColor: Colors.grey.withOpacity(0.6),
      child: SizedBox(
        height: 350,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Select Role",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: customColor.textTitle!,
                ),
              ),
              SizedBox(height: 18),
              Expanded(
                child: ListView.builder(
                  itemCount: teamRolesList.length,
                  itemBuilder: (context, index) {
                    // get single data
                    final getSingleData = teamRolesList[index];

                    return SelectRoleItem(
                      roleEntity: getSingleData,
                      onSelectRole: (roleId) {
                        onSelectRole(roleId);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
