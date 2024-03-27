import 'package:flutter/material.dart';
import 'package:task_ninja/const/color/app_colors.dart';
import 'package:velocity_x/velocity_x.dart';

class TodosHeader extends StatelessWidget {
  final String headername;
  final Widget headerIcon;
  const TodosHeader({
    super.key,
    required this.headername,
    required this.headerIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        headerIcon.objectCenterLeft(),
        10.widthBox,
        headername.text.color(AppColors.kSecondaryBgColor).xl2.bold.make(),
      ],
    );
  }
}
