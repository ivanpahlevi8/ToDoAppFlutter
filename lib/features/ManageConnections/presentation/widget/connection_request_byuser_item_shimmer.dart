import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/core/widget/shimmer_box_widget.dart';

class ConnectionRequestByuserItemShimmer extends StatelessWidget {
  const ConnectionRequestByuserItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            customColor.averageStart!.withOpacity(0.8),
            customColor.averageEnd!.withOpacity(0.8),
          ],
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: Offset(2, 4),
            blurRadius: 12,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/person_icon.png"),
            radius: 50,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShimmerBoxWidget(height: 45, width: 220, padValue: 8),
                SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.verified_user_sharp,
                      size: 18,
                      color: customColor.textTitle,
                    ),
                    SizedBox(width: 2),
                    ShimmerBoxWidget(height: 30, width: 150, padValue: 8),
                  ],
                ),
                SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.mail, size: 18, color: customColor.textTitle),
                    SizedBox(width: 2),
                    ShimmerBoxWidget(height: 30, width: 150, padValue: 8),
                  ],
                ),
                SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.phone, size: 18, color: customColor.textTitle),
                    SizedBox(width: 2),
                    ShimmerBoxWidget(height: 30, width: 150, padValue: 8),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 8),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              minimumSize: Size.zero,
              backgroundColor: customColor.errorColor!,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(8)),
              ),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
            ),
            child: Column(
              children: [
                Icon(Icons.person_off, size: 16, color: customColor.textTitle),
                SizedBox(height: 1),
                Text(
                  "unfollow",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w900,
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
