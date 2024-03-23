import 'package:flutter/material.dart';
import 'package:task_ninja/features/home/view/widget/frosted_form.dart';

class AddYourNote extends StatelessWidget {
  const AddYourNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topCenter,
      child: FrostedForm(),
    );
  }
}
