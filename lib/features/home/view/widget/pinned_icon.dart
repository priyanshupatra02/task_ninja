import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_ninja/const/resource.dart';

class PinnedIcon extends StatelessWidget {
  const PinnedIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      R.ASSETS_ICONS_PINNED_ICON_SVG,
      height: 20,
      colorFilter: ColorFilter.mode(Colors.grey.withOpacity(0.5), BlendMode.srcIn),
      fit: BoxFit.scaleDown,
    );
  }
}
