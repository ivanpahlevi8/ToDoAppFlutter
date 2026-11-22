import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageProject/domain/entities/project_entity.dart';

class TopProjectItemWidget extends StatelessWidget {
  final ProjectEntity project;
  final bool isLeading;
  const TopProjectItemWidget({
    super.key,
    required this.project,
    required this.isLeading,
  });

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Container(
      width: 250,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: customColor.dashboardCardColor!,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 11,
                    height: 11,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isLeading
                            ? customColor.dashboardRoleLeading
                            : customColor.dashboardRoleMember),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    isLeading ? "Leader" : "Member",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      color: customColor.dashboardTextPrimary!,
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: customColor.dashboardChartTrackColor!,
                ),
                child: Text(
                  project.projectStatus == "CREATED" ? "New" : "In Progress",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: project.projectStatus == "CREATED"
                        ? customColor.dashboardRoleMember!
                        : customColor.dashboardRoleLeading,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            project.projectName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: customColor.dashboardTextPrimary!),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.calendar_today,
                color: customColor.dashboardTextSecondary!,
                size: 16,
              ),
              SizedBox(
                width: 3,
              ),
              Flexible(
                child: Text(
                  "Created ${project.createdAt.split("T")[0]}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: customColor.dashboardTextSecondary!),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
