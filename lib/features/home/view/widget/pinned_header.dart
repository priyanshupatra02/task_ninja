import 'package:flutter/material.dart';
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
        headername.text.color(Colors.white).xl2.bold.make(),
      ],
    );
  }
}
