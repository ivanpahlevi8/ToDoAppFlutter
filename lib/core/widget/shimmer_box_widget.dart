import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBoxWidget extends StatelessWidget {
  final double height;
  final double width;
  final double padValue;
  const ShimmerBoxWidget({
    super.key,
    required this.height,
    required this.width,
    required this.padValue,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[500]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        margin: EdgeInsets.all(padValue),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            8,
          ), // Optional: rounds the corners of your shimmer rows
        ),
      ),
    );
  }
}
