import 'package:flutter/material.dart';
import 'package:task_ninja/features/home/view/widget/dot_pattern_painter.dart';

class DotPatternBg extends StatelessWidget {
  const DotPatternBg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(double.infinity, double.infinity),
      painter: DotPatternPainter(),
    );
  }
}
