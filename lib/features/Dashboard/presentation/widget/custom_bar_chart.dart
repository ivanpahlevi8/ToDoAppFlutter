import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

/// Bar (column) chart for the project summary, with an optional 3D look.
///
/// Usage:
///   ProjectBarChart(graphData: graphData)
///   ProjectBarChart(graphData: graphData, colors: [Colors.indigo, Colors.teal], threeD: true)
///
/// graphData rows look like (same format as ProjectPieChart):
///   {"category": "Project as Leader", "value": 3}
///
/// When there are more bars than [visibleBars], the chart shows the first
/// few and the user drags sideways to see the rest.
class CustomBarChart extends StatefulWidget {
  const CustomBarChart({
    super.key,
    required this.graphData,
    this.title = 'My projects',
    this.colors = const <Color>[Color(0xFF4F5BD5), Color(0xFF12A58C)],
    this.height = 260,
    this.threeD = false,
    this.depth = 12,
    this.visibleBars = 5,
  });

  final List<Map<String, dynamic>> graphData;
  final String title;

  /// One color per bar, in the same order as graphData.
  final List<Color> colors;

  /// Height of the chart area in pixels (title not included).
  final double height;

  /// Draws each bar as a 3D block with a side face, top face and shadow.
  final bool threeD;

  /// 3D only: how far each block sticks out up and to the right, in pixels.
  final double depth;

  /// How many bars fit on screen at once. With more data than this, the
  /// chart becomes scrollable sideways. Fewer bars = wider space per bar,
  /// so more room (and gap) for each x-axis label.
  final int visibleBars;

  @override
  State<CustomBarChart> createState() => _ProjectBarChartState();
}

class _ProjectBarChartState extends State<CustomBarChart> {
  // Created once, so the scroll position isn't reset on every rebuild.
  late final ZoomPanBehavior _panBehavior = ZoomPanBehavior(
    enablePanning: true,
    zoomMode: ZoomMode.x, // drag sideways only
  );

  Color _colorAt(int index) => widget.colors[index % widget.colors.length];

  bool get _scrollable => widget.graphData.length > widget.visibleBars;

  double get _maxValue => widget.graphData.fold<double>(
        0,
        (double max, Map<String, dynamic> row) =>
            math.max(max, (row['value'] as num).toDouble()),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(height: widget.height, child: _buildChart()),
      ],
    );
  }

  Widget _buildChart() {
    const TextStyle axisStyle = TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      color: Color(0xFF757575),
    );

    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      zoomPanBehavior: _scrollable ? _panBehavior : null,
      primaryXAxis: CategoryAxis(
        // Show only `visibleBars` bars at a time, starting from the first;
        // the user drags sideways to see the rest.
        autoScrollingDelta: _scrollable ? widget.visibleBars : null,
        autoScrollingMode: AutoScrollingMode.start,
        // Long labels break onto several lines under their own bar instead
        // of running into the neighbouring label.
        labelIntersectAction: AxisLabelIntersectAction.wrap,
        labelStyle: axisStyle,
        majorGridLines: MajorGridLines(width: 0),
        majorTickLines: MajorTickLines(size: 0),
        axisLine: AxisLine(width: 1, color: Colors.grey.shade300),
      ),
      primaryYAxis: NumericAxis(
        minimum: 0,
        // Whole-number steps for small counts, so the axis doesn't show 0.5.
        interval: _maxValue <= 10 ? 1 : null,
        // Keep the same scale while scrolling, so bar heights stay comparable.
        anchorRangeToVisiblePoints: false,
        // Extra headroom so the 3D top face of the tallest bar isn't cut off.
        rangePadding: ChartRangePadding.additional,
        labelStyle: axisStyle,
        axisLine: AxisLine(width: 0),
        majorTickLines: MajorTickLines(size: 0),
        majorGridLines: MajorGridLines(
          width: 1,
          dashArray: <double>[4, 4],
          color: Colors.grey.withValues(alpha: 0.25),
        ),
      ),
      series: <CartesianSeries<Map<String, dynamic>, String>>[
        ColumnSeries<Map<String, dynamic>, String>(
          dataSource: widget.graphData,
          xValueMapper: (Map<String, dynamic> row, _) =>
              row['category'] as String,
          yValueMapper: (Map<String, dynamic> row, _) =>
              (row['value'] as num).toDouble(),
          pointColorMapper: (Map<String, dynamic> row, int index) =>
              _colorAt(index),
          width: 0.45, // bar thickness: 1.0 = bars touch each other
          animationDuration: 1200,
          // Flat mode gets rounded tops; 3D mode draws its own block shape.
          borderRadius: widget.threeD
              ? BorderRadius.zero
              : const BorderRadius.vertical(top: Radius.circular(10)),
          onCreateRenderer: widget.threeD
              ? (ChartSeries<Map<String, dynamic>, String> series) =>
                  _Column3DRenderer<Map<String, dynamic>, String>(
                    colors: widget.colors,
                    blockDepth: widget.depth,
                  )
              : null,
          // Value shown inside the top of each bar, so it doesn't sit on
          // the 3D top face.
          dataLabelMapper: (Map<String, dynamic> row, _) => '${row['value']}',
          dataLabelSettings: const DataLabelSettings(
            isVisible: true,
            labelAlignment: ChartDataLabelAlignment.top,
            textStyle: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// 3D renderer: Syncfusion lets you replace how each bar ("segment") is drawn.
// Each bar becomes a block with a front face, a lighter top face, a darker
// right side face and a soft shadow. It paints from the bar's current
// rectangle, so it grows along with the intro animation.
// ---------------------------------------------------------------------------

class _Column3DRenderer<T, D> extends ColumnSeriesRenderer<T, D> {
  _Column3DRenderer({required this.colors, required this.blockDepth});

  final List<Color> colors;

  // Not called `depth`: the renderer is a RenderObject, which already has
  // an int `depth` property (its position in the render tree).
  final double blockDepth;

  @override
  ColumnSegment<T, D> createSegment() =>
      _Column3DSegment<T, D>(colors: colors, blockDepth: blockDepth);
}

class _Column3DSegment<T, D> extends ColumnSegment<T, D> {
  _Column3DSegment({required this.colors, required this.blockDepth});

  final List<Color> colors;
  final double blockDepth;

  @override
  void onPaint(Canvas canvas) {
    final RRect? rrect = segmentRect;
    if (rrect == null) return;

    final Rect front = rrect.outerRect;
    if (front.width <= 0 || front.height <= 0) return;

    // Look up this bar's color directly from your list.
    final Color base = colors[currentSegmentIndex % colors.length];

    // Cap the depth so thin bars don't get a huge side face.
    final double d = math.min(blockDepth, front.width * 0.35);

    // 1. Soft shadow behind the block, offset right as if lit from the left.
    canvas.drawRect(
      Rect.fromLTRB(
        front.left + 4,
        front.top - d + 6,
        front.right + d + 6,
        front.bottom,
      ),
      Paint()
        ..color = Colors.black.withValues(alpha: 0.18)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 7),
    );

    // 2. Right side face: in shade, so darker.
    final Path side = Path()
      ..moveTo(front.right, front.top)
      ..lineTo(front.right + d, front.top - d)
      ..lineTo(front.right + d, front.bottom - d)
      ..lineTo(front.right, front.bottom)
      ..close();
    canvas.drawPath(side, Paint()..color = _shade(base, -0.18));

    // 3. Top face: catching the light, so lighter.
    final Path top = Path()
      ..moveTo(front.left, front.top)
      ..lineTo(front.left + d, front.top - d)
      ..lineTo(front.right + d, front.top - d)
      ..lineTo(front.right, front.top)
      ..close();
    canvas.drawPath(top, Paint()..color = _shade(base, 0.16));

    // 4. Front face with a subtle left-to-right gradient.
    canvas.drawRect(
      front,
      Paint()
        ..shader = LinearGradient(
          colors: <Color>[_shade(base, 0.08), base, _shade(base, -0.06)],
        ).createShader(front),
    );
  }
}

/// Shifts a color's lightness up (+) or down (-).
Color _shade(Color color, double amount) {
  final HSLColor hsl = HSLColor.fromColor(color);
  return hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0)).toColor();
}
