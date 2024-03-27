import 'package:flutter/material.dart';

class CloseDrawerButton extends StatelessWidget {
  const CloseDrawerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: const Icon(
          Icons.close,
          size: 40.0,
        ),
      ),
    );
  }
}
