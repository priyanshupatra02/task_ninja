import 'package:flutter/material.dart';
import 'package:task_ninja/features/home/view/widget/frosted_glass_box.dart';
import 'package:velocity_x/velocity_x.dart';

class TodosGridView extends StatelessWidget {
  final int? taskCount;
  const TodosGridView({
    super.key,
    this.taskCount = 1,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      itemCount: taskCount,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return FrostedGlassBox(
          width: double.infinity,
          height: double.infinity,
          child: 'Task $index'.text.make(),
        );
      },
    );
  }
}
