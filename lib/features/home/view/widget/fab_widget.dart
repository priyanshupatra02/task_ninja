import 'package:flutter/material.dart';

class FAB extends StatelessWidget {
  const FAB({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(100),
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(100),
          topRight: Radius.circular(100),
        ),
      ),
      child: const Icon(Icons.add),
    );
  }
}
