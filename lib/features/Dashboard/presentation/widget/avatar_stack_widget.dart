import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/core/theme/app_custom_color.dart';
import 'package:to_do_app_flutter/features/Dashboard/presentation/widget/avatar_color.dart';

class AvatarPerson {
  const AvatarPerson(this.id, this.name);
  final String id;
  final String name;
}

/// Overlapping circles: first few people, then a "+N" circle for the rest.
/// Later circles sit on top of earlier ones, like the design.
class AvatarStack extends StatelessWidget {
  const AvatarStack({
    super.key,
    required this.people,
    required this.totalCount,
    this.maxVisible = 2,
    this.size = 36,
    this.overlap = 10,
  });

  /// The people you have details for (can be just the first few from the API).
  final List<AvatarPerson> people;

  /// Everyone, including those not in [people]. Used for the "+N".
  final int totalCount;

  final int maxVisible;
  final double size;

  /// How many pixels each circle slides under the next one.
  final double overlap;

  static const double _ring = 2;

  @override
  Widget build(BuildContext context) {
    final c = Theme.of(context).extension<AppCustomColors>()!;
    final visible = people.take(maxVisible).toList();
    final extra = totalCount - visible.length;

    final circles = <Widget>[
      for (final p in visible)
        TeamAvatar(id: p.id, name: p.name, size: size, circle: true),
      if (extra > 0)
        Container(
          width: size,
          height: size,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: c.dashboardChartTrackColor, shape: BoxShape.circle),
          child: Text(
            extra > 99 ? '99+' : '+$extra',
            style: TextStyle(
              fontSize: size * 0.33,
              fontWeight: FontWeight.w700,
              color: c.dashboardChartLabel,
            ),
          ),
        ),
    ];
    if (circles.isEmpty) return const SizedBox.shrink();

    final outer = size + _ring * 2;
    final step = outer - overlap;

    return ExcludeSemantics(
      child: SizedBox(
        width: outer + step * (circles.length - 1),
        height: outer,
        child: Stack(
          children: [
            for (var i = 0; i < circles.length; i++)
              Positioned(
                left: step * i,
                child: Container(
                  // A circle in the card colour behind each avatar = the "cut-out" ring.
                  padding: const EdgeInsets.all(_ring),
                  decoration: BoxDecoration(
                      color: c.dashboardCardColor, shape: BoxShape.circle),
                  child: circles[i],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
