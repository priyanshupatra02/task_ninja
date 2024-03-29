import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FilterTodo extends StatelessWidget {
  const FilterTodo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.filter_list,
              color: Colors.grey,
            ),
            5.widthBox,
            'Filter'.text.color(Colors.grey.withOpacity(0.5)).xl.semiBold.make()
          ],
        ),
      ),
    );
  }
}
