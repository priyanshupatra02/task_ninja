import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_ninja/const/resource.dart';

class TodoIcon extends StatelessWidget {
  const TodoIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      R.ASSETS_ICONS_TODO_ICON_SVG,
      height: 20,
      colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      fit: BoxFit.scaleDown,
    );
  }
}
