import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomPieChart extends StatelessWidget {
  const CustomPieChart({
    super.key,
    required this.graphData,
    this.colors = const <Color>[Color(0xFF4F5BD5), Color(0xFF12A58C)],
    this.size = 220,
    this.threeD = false,
    this.thickness = 20,
    this.tilt = 0.9,
  });

  final List<Map<String, dynamic>> graphData;

  /// One color per row, in the same order as graphData.
  final List<Color> colors;

  /// Diameter of the pie in pixels.
  final double size;

  /// Tilts the pie and gives it thickness so it looks like a 3D disc.
  final bool threeD;

  /// 3D only: how thick the disc looks, in pixels.
  final double thickness;

  /// 3D only: how far the pie is tipped back, in radians (0.9 is about 52 degrees).
  final double tilt;

  /// 3D only: how many darker copies are stacked to build the thickness.
  static const int _layers = 10;

  Color _colorAt(int index) => colors[index % colors.length];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        // Title sits outside the chart so it doesn't shrink the pie.
        threeD ? _build3DPie() : _buildFlatPie(),
        const SizedBox(height: 20),
        _buildLegend(),
      ],
    );
  }

  Widget _buildFlatPie() {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.18),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: _pie(),
    );
  }

  // ---------------------------------------------------------------------------
  // 3D pie: tilted with perspective, with darker copies stacked underneath
  // to form the side wall, and a shadow on the "table" below.
  // ---------------------------------------------------------------------------

  Widget _build3DPie() {
    final Matrix4 tiltMatrix = Matrix4.identity()
      ..setEntry(3, 2, 0.0012) // perspective: nearer parts look bigger
      ..rotateX(-tilt); // tip the top of the pie away from the viewer

    Widget tilted(Widget child) => Transform(
          alignment: Alignment.center,
          transform: tiltMatrix,
          child: child,
        );

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          // Shadow under the bottom of the disc.
          Positioned.fill(
            child: Transform.translate(
              offset: Offset(0, thickness + 12),
              child: tilted(
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.25),
                        blurRadius: 24,
                        spreadRadius: -4,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Side wall: darker copies, each nudged a little further down.
          for (int i = _layers - 1; i >= 0; i--)
            Positioned.fill(
              child: Transform.translate(
                offset: Offset(0, thickness * (i + 1) / _layers),
                child: tilted(_pie(isTop: false, depth: (i + 1) / _layers)),
              ),
            ),
          // Top surface.
          Positioned.fill(child: tilted(_pie())),
        ],
      ),
    );
  }

  Widget _pie({bool isTop = true, double depth = 0}) {
    return SfCircularChart(
      margin: EdgeInsets.zero,
      series: <CircularSeries<Map<String, dynamic>, String>>[
        PieSeries<Map<String, dynamic>, String>(
          dataSource: graphData,
          xValueMapper: (Map<String, dynamic> row, _) =>
              row['category'] as String,
          yValueMapper: (Map<String, dynamic> row, _) =>
              (row['value'] as num).toDouble(),
          pointColorMapper: (Map<String, dynamic> row, int index) => isTop
              ? _colorAt(index)
              : _shade(_colorAt(index), -0.14 - 0.12 * depth),
          pointShaderMapper: isTop && threeD ? _domeShader : null,
          radius: '100%',
          strokeColor: isTop ? Colors.white : Colors.transparent,
          strokeWidth: isTop ? 1.5 : 0,
          // Labels are hidden in 3D because the tilt squashes them;
          // the legend shows the numbers instead.
          dataLabelSettings: DataLabelSettings(
            isVisible: isTop && !threeD,
            textStyle: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  ui.Shader _domeShader(
    dynamic row, // Syncfusion types this parameter as dynamic
    int index,
    Color color,
    Rect rect,
  ) {
    // Use our own color for this slice. The `color` Syncfusion passes in is
    // its default palette color, not the one from pointColorMapper.
    final Color base = _colorAt(index);
    final double r = rect.width / 2;
    return ui.Gradient.radial(
      rect.center.translate(-r * 0.35, -r * 0.4),
      r * 1.6,
      <Color>[_shade(base, 0.16), base, _shade(base, -0.12)],
      <double>[0.0, 0.5, 1.0],
    );
  }

  Widget _buildLegend() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        for (int i = 0; i < graphData.length; i++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: _colorAt(i),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  '${graphData[i]['category']} (${graphData[i]['value']})',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    color: Colors.grey.shade700,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

/// Shifts a color's lightness up (+) or down (-).
Color _shade(Color color, double amount) {
  final HSLColor hsl = HSLColor.fromColor(color);
  return hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0)).toColor();
}
