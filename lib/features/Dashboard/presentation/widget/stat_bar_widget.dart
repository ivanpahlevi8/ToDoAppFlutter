import 'package:flutter/material.dart';

class StatBarData {
  const StatBarData(this.label, this.value, {this.needsAction = false});
  final String label;
  final int value;
  final bool needsAction;
}

class StatBarRow extends StatelessWidget {
  const StatBarRow({
    super.key,
    required this.item,
    required this.fraction,
    required this.fill,
    required this.color,
  });

  final StatBarData item;
  final double fraction;
  final Color fill;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: '${item.label}: ${item.value}',
      excludeSemantics: true,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(999),
        child: Container(
          height: 12,
          color: color, // the grey track
          alignment: Alignment.centerLeft,
          child: TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: fraction), // grows in on first build
            duration: const Duration(milliseconds: 600),
            curve: Curves.easeOutCubic,
            builder: (context, value, _) => FractionallySizedBox(
              widthFactor: value,
              heightFactor: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: fill, // the coloured part
                  borderRadius: BorderRadius.circular(999),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
