import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/core/widget/shimmer_box_widget.dart';

class SearchUserItemShimmerWidget extends StatelessWidget {
  const SearchUserItemShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        gradient: LinearGradient(
          colors: [
            customColor.excellentStart!.withOpacity(0.5),
            customColor.excellentEnd!.withOpacity(0.5),
          ],
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.bottomRight,
        ),
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/person_icon.png"),
            radius: 45,
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShimmerBoxWidget(height: 45, width: 130, padValue: 3),
                SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 22, color: customColor.textTitle),
                    SizedBox(width: 4),
                    ShimmerBoxWidget(height: 35, width: 100, padValue: 3),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.email, size: 22, color: customColor.textTitle),
                    SizedBox(width: 4),
                    ShimmerBoxWidget(height: 35, width: 100, padValue: 3),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.phone, size: 22, color: customColor.textTitle),
                    SizedBox(width: 4),
                    ShimmerBoxWidget(height: 35, width: 100, padValue: 3),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 12),
          FilledButton(
            style: FilledButton.styleFrom(
              splashFactory: InkSparkle.splashFactory,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              backgroundColor: customColor.excellentEnd,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              // send request to user
            },
            child: const Icon(
              Icons.person_add_alt,
              size: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
