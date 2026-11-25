import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';

/// Paints the loading shimmer over [child]. Colors come from the theme, so the
/// effect is subtle in both light and dark mode (instead of fixed greys).
///
/// Put [ShimmerBone]s inside it to draw the placeholder shapes.
class AppShimmer extends StatelessWidget {
  const AppShimmer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Shimmer.fromColors(
      baseColor: customColor.dashboardChartTrackColor!,
      // the sweep is lighter than the bone: brighter border tone in dark mode,
      // the white card color in light mode
      highlightColor: isDark
          ? customColor.dashboardStrongBorderColor!
          : customColor.dashboardCardColor!,
      child: child,
    );
  }
}

/// A placeholder shape for inside [AppShimmer]. Its color is replaced by the
/// shimmer, so any opaque color works here.
class ShimmerBone extends StatelessWidget {
  const ShimmerBone({
    super.key,
    this.width,
    this.height,
    this.radius = 6,
    this.circle = false,
  });

  final double? width;
  final double? height;
  final double radius;
  final bool circle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: circle ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: circle ? null : BorderRadius.circular(radius),
      ),
    );
  }
}
