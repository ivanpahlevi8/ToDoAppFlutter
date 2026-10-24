import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/Dashboard/domain/entities/connection_user_item_summary_entity.dart';

class TopConnectionItemWidget extends StatelessWidget {
  final ConnectionUserItemSummaryEntity connectionSummaryEntity;
  const TopConnectionItemWidget(
      {super.key, required this.connectionSummaryEntity});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Container(
      width: 200,
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      decoration: BoxDecoration(
          border: Border.all(color: customColor.cyanCardBorder!),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            colors: [
              customColor.cyanCardGradientStart!,
              customColor.cyanCardGradientEntd!,
            ],
            begin: AlignmentGeometry.topLeft,
            end: AlignmentGeometry.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: customColor.cyanCardShadow!,
              offset: Offset(2, 4),
              blurRadius: 10,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.person,
                size: 16,
                fontWeight: FontWeight.w800,
                color: customColor.textTitle!,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                connectionSummaryEntity.user.userName,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: customColor.textTitle!,
                ),
              )
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.drag_indicator,
                size: 16,
                fontWeight: FontWeight.w800,
                color: customColor.textTitle!,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                connectionSummaryEntity.connectionEntity.connectionStatus,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: customColor.textTitle!,
                ),
              )
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.calendar_month,
                size: 16,
                fontWeight: FontWeight.w800,
                color: customColor.textTitle!,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                connectionSummaryEntity.connectionEntity.createdAt
                    .split("T")[0],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: customColor.textTitle!,
                ),
              )
            ],
          ),
          SizedBox(
            height: 6,
          ),
          // button for detail
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: customColor.averageEnd!,
                    minimumSize: Size.zero,
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadiusGeometry.all(Radius.circular(10))),
                  ),
                  onPressed: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info,
                        size: 16,
                        fontWeight: FontWeight.w900,
                        color: customColor.textTitle!,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Info",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: customColor.textTitle!),
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
