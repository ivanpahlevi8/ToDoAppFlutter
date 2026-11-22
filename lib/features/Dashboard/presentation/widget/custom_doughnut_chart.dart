import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

/// A doughnut (ring) chart with a number shown in the middle,
/// e.g. a big "7" with "projects" underneath.
///
/// Set [selectedIndex] to highlight one slice: the other slices fade to
/// [dimmedColor] and the middle shows that slice's value instead of the total.
class CustomDoughnutChart extends StatelessWidget {
  const CustomDoughnutChart({
    super.key,
    required this.graphData,
    this.colors = const <Color>[Color(0xFF4F5BD5), Color(0xFF12A58C)],
    this.size = 220,
    this.ringWidth = 0.16,
    this.centerLabel = '',
    this.gapColor,
    this.trackColor,
    this.valueColor,
    this.labelColor,
    this.selectedIndex,
    this.dimmedColor,
  });

  /// Rows of {'category': String, 'value': num}.
  final List<Map<String, dynamic>> graphData;

  /// One color per row, in the same order as graphData.
  final List<Color> colors;

  /// Diameter of the doughnut in pixels.
  final double size;

  /// Thickness of the ring as a fraction of the diameter (0.16 = 16%).
  final double ringWidth;

  /// Small text under the total, e.g. 'projects'. Empty hides it.
  final String centerLabel;

  /// Color of the thin gaps between slices. Use the card's background color
  /// so the gaps look cut out. Defaults to the theme's surface color.
  final Color? gapColor;

  /// Ring color shown when every value is 0, so the chart isn't blank.
  final Color? trackColor;

  /// Color of the big total number in the middle.
  final Color? valueColor;

  /// Color of [centerLabel].
  final Color? labelColor;

  /// Index into [graphData] of the highlighted slice. Null shows every slice
  /// in its own color and the total in the middle.
  final int? selectedIndex;

  /// Color of the slices that aren't selected.
  final Color? dimmedColor;

  Color _colorAt(int index) => colors[index % colors.length];

  double _valueOf(Map<String, dynamic> row) => (row['value'] as num).toDouble();

  num get _total => graphData.fold<num>(
        0,
        (num sum, Map<String, dynamic> row) => sum + (row['value'] as num),
      );

  bool get _hasSelection =>
      selectedIndex != null &&
      selectedIndex! >= 0 &&
      selectedIndex! < graphData.length;

  /// The number in the middle: the selected slice's value, or the total.
  num get _centerValue =>
      _hasSelection ? graphData[selectedIndex!]['value'] as num : _total;

  Color _sliceColor(int index, ColorScheme scheme) {
    if (!_hasSelection || index == selectedIndex) return _colorAt(index);
    return dimmedColor ?? scheme.surfaceContainerHighest;
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme scheme = Theme.of(context).colorScheme;

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          _doughnut(scheme),
          _centerText(scheme),
        ],
      ),
    );
  }

  Widget _doughnut(ColorScheme scheme) {
    final bool isEmpty = _total == 0;

    // With nothing to show, draw one full ring in the track color instead.
    final List<Map<String, dynamic>> source = isEmpty
        ? const <Map<String, dynamic>>[
            <String, dynamic>{'category': '', 'value': 1},
          ]
        : graphData;

    return SfCircularChart(
      margin: EdgeInsets.zero,
      series: <CircularSeries<Map<String, dynamic>, String>>[
        DoughnutSeries<Map<String, dynamic>, String>(
          dataSource: source,
          xValueMapper: (Map<String, dynamic> row, _) =>
              row['category'] as String,
          yValueMapper: (Map<String, dynamic> row, _) => _valueOf(row),
          pointColorMapper: (Map<String, dynamic> row, int index) => isEmpty
              ? (trackColor ?? scheme.surfaceContainerHighest)
              : _sliceColor(index, scheme),
          radius: '100%',
          innerRadius: '${((1 - ringWidth * 2) * 100).round()}%',
          // The stroke draws the thin cut between slices.
          strokeColor: isEmpty ? Colors.transparent : (gapColor ?? scheme.surface),
          strokeWidth: isEmpty ? 0 : 3,
          animationDuration: 1000,
          dataLabelSettings: const DataLabelSettings(isVisible: false),
        ),
      ],
    );
  }

  Widget _centerText(ColorScheme scheme) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          '$_centerValue',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: size * 0.22,
            fontWeight: FontWeight.w800,
            height: 1.1,
            color: valueColor ?? scheme.onSurface,
          ),
        ),
        if (centerLabel.isNotEmpty)
          Text(
            centerLabel,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: size * 0.09,
              fontWeight: FontWeight.w500,
              color: labelColor ?? scheme.onSurfaceVariant,
            ),
          ),
      ],
    );
  }
}
