import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task_ninja/features/home/view/widget/close_drawer_button.dart';
import 'package:velocity_x/velocity_x.dart';

class GlassmorphicDrawer extends StatelessWidget {
  const GlassmorphicDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        width: double.infinity,
        color: Colors.transparent,
        child: Center(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const CloseDrawerButton(),
                  40.heightBox,
                  'All Task'
                      .text
                      .semiBold
                      .xl2
                      .make()
                      .box
                      .withRounded(value: 8)
                      .p8
                      .color(Colors.green)
                      .make(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
