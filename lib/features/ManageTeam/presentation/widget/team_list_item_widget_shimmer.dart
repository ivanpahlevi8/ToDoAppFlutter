import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/core/widget/shimmer_box_widget.dart';

class TeamListItemWidgetShimmer extends StatelessWidget {
  const TeamListItemWidgetShimmer({super.key});

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
                ShimmerBoxWidget(height: 45, width: 180, padValue: 4),
                SizedBox(height: 4),
                ShimmerBoxWidget(height: 30, width: 120, padValue: 4),
                SizedBox(height: 6),
                ShimmerBoxWidget(height: 30, width: 120, padValue: 4),
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
                    ShimmerBoxWidget(height: 30, width: 100, padValue: 4),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 6),
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
        ],
      ),
    );
  }
}
