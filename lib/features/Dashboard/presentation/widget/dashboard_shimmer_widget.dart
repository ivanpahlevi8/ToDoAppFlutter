import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/core/widget/app_shimmer.dart';

// ---------------------------------------------------------------------------
// Loading skeletons for the dashboard cards.
//
// Each skeleton copies the size and layout of the real card (same margin,
// padding, radius and rough content shapes), so the page doesn't jump when
// the data arrives. The card background stays still; only the grey "bones"
// inside it shimmer.
// ---------------------------------------------------------------------------

/// Project / Team card: doughnut ring on the left, two role tiles on the right.
/// [showList] adds a row of project-card placeholders under it.
class RoleSummaryShimmer extends StatelessWidget {
  const RoleSummaryShimmer({super.key, this.showList = false});

  final bool showList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _ShimmerCard(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          child: Row(
            children: [
              // same size and ring width as CustomDoughnutChart(size: 150)
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 24),
                ),
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: Column(
                  children: [
                    ShimmerBone(height: 46, radius: 12),
                    SizedBox(height: 12),
                    ShimmerBone(height: 46, radius: 12),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (showList) ...[
          const SizedBox(height: 16),
          SizedBox(
            height: 132,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              separatorBuilder: (_, __) => const SizedBox(width: 24),
              itemBuilder: (_, __) => const AppShimmer(
                child: ShimmerBone(width: 250, height: 132, radius: 12),
              ),
            ),
          ),
        ],
      ],
    );
  }
}

/// To-Dos card: three bars, a divider, then three to-do rows.
class ToDoSummaryShimmer extends StatelessWidget {
  const ToDoSummaryShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return _ShimmerCard(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Column(
        children: [
          // bar chart area, same height as CustomBarChart(height: 200)
          SizedBox(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        for (final double h in const [0.55, 0.9, 0.4])
                          FractionallySizedBox(
                            heightFactor: h,
                            child: const ShimmerBone(width: 44, radius: 10),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ShimmerBone(width: 60, height: 10),
                      ShimmerBone(width: 60, height: 10),
                      ShimmerBone(width: 60, height: 10),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 18),
          const ShimmerBone(height: 2),
          const SizedBox(height: 6),
          for (int i = 0; i < 3; i++)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                children: [
                  ShimmerBone(width: 34, height: 34, radius: 12),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShimmerBone(width: 140, height: 14),
                        SizedBox(height: 6),
                        ShimmerBone(width: 100, height: 12),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  ShimmerBone(width: 72, height: 30, radius: 12),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

/// Connections card: one label | bar | number row per status, a divider,
/// then the avatar row.
class ConnectionSummaryShimmer extends StatelessWidget {
  const ConnectionSummaryShimmer({super.key, this.rows = 8});

  /// Should match the number of entries in the real card's graphData.
  final int rows;

  @override
  Widget build(BuildContext context) {
    return _ShimmerCard(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      child: Column(
        children: [
          for (int i = 0; i < rows; i++) ...[
            if (i > 0) const SizedBox(height: 14),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  // same fixed widths as the real row, so bars line up
                  ShimmerBone(width: 110, height: 12),
                  SizedBox(width: 8),
                  Expanded(child: ShimmerBone(height: 12, radius: 999)),
                  SizedBox(width: 8),
                  ShimmerBone(width: 28, height: 12),
                ],
              ),
            ),
          ],
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ShimmerBone(height: 2),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                ShimmerBone(width: 36, height: 36, circle: true),
                SizedBox(width: 4),
                ShimmerBone(width: 36, height: 36, circle: true),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShimmerBone(width: 120, height: 14),
                      SizedBox(height: 6),
                      ShimmerBone(height: 12),
                    ],
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

// ---------------------------------------------------------------------------
// Building blocks
// ---------------------------------------------------------------------------

/// The dashboard card (same margin, radius and color as the real cards)
/// with a shimmering [child].
class _ShimmerCard extends StatelessWidget {
  const _ShimmerCard({required this.child, required this.padding});

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<AppCustomColors>()!;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(18)),
        color: customColor.dashboardCardColor!,
      ),
      child: AppShimmer(child: child),
    );
  }
}
