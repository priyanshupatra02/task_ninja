import 'package:flutter/material.dart';
import 'package:task_ninja/features/home/view/widget/filter_todo.dart';
import 'package:task_ninja/features/home/view/widget/pinned_header.dart';
import 'package:task_ninja/features/home/view/widget/todo_icon.dart';

class AllTodosHeader extends StatelessWidget {
  const AllTodosHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        TodosHeader(headerIcon: TodoIcon(), headername: 'All Todos'),
        Spacer(),
        //filter todos
        FilterTodo(),
      ],
    );
  }
}
