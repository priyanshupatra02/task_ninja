import 'package:flutter/material.dart';
import 'package:task_ninja/features/home/view/widget/all_todos_header.dart';
import 'package:task_ninja/features/home/view/widget/create_todo_widget.dart';
import 'package:task_ninja/features/home/view/widget/pinned_header.dart';
import 'package:task_ninja/features/home/view/widget/pinned_icon.dart';
import 'package:task_ninja/features/home/view/widget/todos_grid_view.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          verticalDirection: VerticalDirection.down,
          mainAxisSize: MainAxisSize.max,
          children: [
            //Create todo
            const CreateTodoWidget(),
            20.heightBox,
            const TodosHeader(headerIcon: PinnedIcon(), headername: 'Pinned'),
            15.heightBox,
            //only 2 pinned task
            const TodosGridView(taskCount: 2),
            30.heightBox,
            const AllTodosHeader(),
            15.heightBox,
            const TodosGridView(taskCount: 10),
          ],
        ).px12(),
      ),
    );
  }
}
