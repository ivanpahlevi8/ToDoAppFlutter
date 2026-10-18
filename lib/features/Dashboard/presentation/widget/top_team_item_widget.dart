import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/ManageTeam/domain/entities/team_entity.dart';

class TopTeamItemWidget extends StatelessWidget {
  final TeamEntity team;
  const TopTeamItemWidget({super.key, required this.team});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Container(
      width: 200,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      decoration: BoxDecoration(
          border: Border.all(color: customColor.amberCardBorder!),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            colors: [
              customColor.amberCardGradientStart!,
              customColor.amberCardGradientEnd!,
            ],
            begin: AlignmentGeometry.topLeft,
            end: AlignmentGeometry.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: customColor.amberCardShadow!,
              offset: Offset(2, 4),
              blurRadius: 10,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            team.teamName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: customColor.textTitle!,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.calendar_month,
                size: 16,
                color: customColor.textTitle!,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                team.createdAt.split("T")[0],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: customColor.textTitle!,
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      backgroundColor: customColor.averageEnd!,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadiusGeometry.all(Radius.circular(10))),
                      padding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 8)),
                  onPressed: () {
                    // detail team
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info,
                        size: 16,
                        color: customColor.textTitle!,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "Info",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: customColor.textTitle!,
                        ),
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
