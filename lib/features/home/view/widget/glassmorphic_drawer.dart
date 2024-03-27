import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task_ninja/features/home/view/widget/close_drawer_button.dart';

class GlassmorphicDrawer extends StatelessWidget {
  const GlassmorphicDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Container(
        width: double.infinity,
        color: Colors.transparent,
        child: const Center(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CloseDrawerButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
