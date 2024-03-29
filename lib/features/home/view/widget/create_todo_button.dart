import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_ninja/core/router/router.gr.dart';
import 'package:velocity_x/velocity_x.dart';

class CreateTodoButton extends StatelessWidget {
  const CreateTodoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: OutlinedButton.icon(
        onPressed: () {
          context.navigateTo(const CounterRoute());
        },
        style: OutlinedButton.styleFrom(
          shape: const StadiumBorder(
            side: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
        icon: const Icon(
          Icons.add,
          color: Colors.white,
          size: 20,
        ),
        label: 'Add'.text.white.make(),
      ),
    );
  }
}
