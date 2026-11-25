import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/core/widget/app_shimmer.dart';

/// Loading placeholder with the same size and layout as
/// [SearchUserItemWidget]: avatar circle, two text lines and a button shape.
/// The card stays still; only the shapes inside it shimmer.
class SearchUserItemShimmerWidget extends StatelessWidget {
  const SearchUserItemShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(18)),
        color: customColor.dashboardCardColor!,
      ),
      child: const AppShimmer(
        child: Row(
          children: [
            ShimmerBone(width: 44, height: 44, circle: true),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShimmerBone(width: 120, height: 14),
                  SizedBox(height: 8),
                  ShimmerBone(width: 90, height: 12),
                ],
              ),
            ),
            SizedBox(width: 12),
            ShimmerBone(width: 104, height: 42, radius: 12),
          ],
        ),
      ),
    );
  }
}
