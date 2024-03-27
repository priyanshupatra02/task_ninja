import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task_ninja/const/color/app_colors.dart';

class FrostedGlassBox extends StatelessWidget {
  const FrostedGlassBox(
      {super.key, required this.width, required this.height, required this.child});

  final double width;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: width,
        height: height,
        color: Colors.transparent,
        //we use Stack(); because we want the effects be on top of each other,
        //  just like layer in photoshop.
        child: Stack(
          children: [
            //blur effect ==> the third layer of stack
            BackdropFilter(
              filter: ImageFilter.blur(
                //sigmaX is the Horizontal blur
                sigmaX: 3.2,
                //sigmaY is the Vertical blur
                sigmaY: 3.2,
              ),
              //we use this container to scale up the blur effect to fit its
              //  parent, without this container the blur effect doesn't appear.
              child: Container(),
            ),
            //gradient effect ==> the second layer of stack
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: AppColors.kSecondaryBgColor.withOpacity(0.13)),
                gradient:
                    LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
                  //begin color
                  AppColors.kSecondaryBgColor.withOpacity(0.15),
                  //end color
                  AppColors.kSecondaryBgColor.withOpacity(0.05),
                ],),
              ),
            ),
            //child ==> the first/top layer of stack
            Center(child: child),
          ],
        ),
      ),
    );
  }
}
