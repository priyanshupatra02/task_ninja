import 'package:flutter/material.dart';
import 'package:task_ninja/const/color/app_colors.dart';
import 'package:task_ninja/features/home/view/widget/create_todo_button.dart';
import 'package:task_ninja/features/home/view/widget/todos_form.dart';
import 'package:velocity_x/velocity_x.dart';

class CreateTodoWidget extends StatelessWidget {
  const CreateTodoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: AppColors.kSecondPrimaryBgColor.withOpacity(0.13),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            'Create Todo 💡'.text.headline3(context).semiBold.white.make(),
            //Create todo form
            const TodosForm(),
            //Add todo button
            const CreateTodoButton(),
          ],
        ),
      ),
    );
  }
}
