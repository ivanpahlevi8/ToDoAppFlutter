import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_list_view_entity.dart';

class TeamListItemWidget extends StatefulWidget {
  final TeamListViewEntity teamListViewEntity;
  const TeamListItemWidget({super.key, required this.teamListViewEntity});

  @override
  State<TeamListItemWidget> createState() => _TeamListItemWidgetState();
}

class _TeamListItemWidgetState extends State<TeamListItemWidget> {
  bool showDescription = false;

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: Offset(2, 4),
            blurRadius: 12,
          ),
        ],
        gradient: LinearGradient(
          colors: [
            customColor.timeLineCardColor1!,
            customColor.timeLineCardColor2!,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.people_alt, color: customColor.textTitle, size: 75),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.teamListViewEntity.teamEntity.teamName,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: customColor.textTitle!,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Group Description",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: customColor.textTitle!,
                      ),
                    ),
                    IconButton(
                      style: IconButton.styleFrom(
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.all(
                            Radius.circular(10),
                          ),
                        ),
                        padding: EdgeInsets.all(4),
                      ),
                      onPressed: () {
                        setState(() {
                          showDescription = !showDescription;
                        });
                      },
                      icon: Icon(
                        showDescription
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        size: 18,
                        color: customColor.textTitle!,
                      ),
                    ),
                  ],
                ),
                if (showDescription)
                  Container(
                    margin: EdgeInsets.only(left: 6, bottom: 8),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey.withOpacity(0.6),
                    ),
                    child: Text(
                      widget.teamListViewEntity.teamEntity.teamDescription,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        color: customColor.textTitle,
                      ),
                    ),
                  ),
                SizedBox(height: 6),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    gradient: LinearGradient(
                      colors: [
                        customColor.gold!.withOpacity(0.4),
                        customColor.gold!.withOpacity(0.6),
                      ],
                      begin: AlignmentGeometry.topLeft,
                      end: AlignmentGeometry.bottomRight,
                    ),
                  ),
                  child: Text(
                    "Lead by ${widget.teamListViewEntity.teamLeader.userName}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: customColor.textTitle,
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_month,
                      size: 20,
                      fontWeight: FontWeight.w900,
                      color: customColor.textTitle!,
                    ),
                    SizedBox(width: 6),
                    Text(
                      widget.teamListViewEntity.teamEntity.createdAt.split(
                        "T",
                      )[0],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: customColor.textTitle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 6),
          if (!showDescription)
            Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: customColor.averageEnd,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    minimumSize: Size.zero,
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.details,
                        size: 14,
                        fontWeight: FontWeight.w800,
                        color: customColor.textTitle,
                      ),
                      SizedBox(height: 1),
                      Text(
                        "detail",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          color: customColor.textTitle,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6),
                if (widget.teamListViewEntity.isTeamLead)
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: customColor.errorColor!,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      minimumSize: Size.zero,
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.delete,
                          size: 14,
                          fontWeight: FontWeight.w800,
                          color: customColor.textTitle,
                        ),
                        SizedBox(height: 1),
                        Text(
                          "delete",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: customColor.textTitle,
                          ),
                        ),
                      ],
                    ),
                  ),
                if (!widget.teamListViewEntity.isTeamLead)
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: customColor.errorColor!,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      minimumSize: Size.zero,
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.logout,
                          size: 14,
                          fontWeight: FontWeight.w800,
                          color: customColor.textTitle,
                        ),
                        SizedBox(height: 1),
                        Text(
                          "leave",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: customColor.textTitle,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
