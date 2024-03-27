import 'package:flutter/material.dart';
import 'package:task_ninja/const/color/app_colors.dart';

class DotPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const double dotSpacing = 30.0;
    final Paint paint = Paint()
      ..color = AppColors.kSecondaryBgColor.withOpacity(0.2)
      ..style = PaintingStyle.fill;

    for (double x = 14; x < size.width; x += dotSpacing) {
      for (double y = 14; y < size.height; y += dotSpacing) {
        canvas.drawCircle(Offset(x, y), 1.0, paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
