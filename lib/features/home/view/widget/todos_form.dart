import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class TodosForm extends StatelessWidget {
  const TodosForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FormBuilderTextField(
        name: 'todo',
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.multiline,
        textInputAction: TextInputAction.newline,
        maxLines: null, // to allow the text field to expand vertically as more lines are added
        style: GoogleFonts.inter(
          fontSize: 16,
          color: Colors.white.withOpacity(0.7),
          fontWeight: FontWeight.w600,
        ),
        decoration: const InputDecoration(
          hintText: 'Enter your todo ✨',
          hintStyle: TextStyle(
            color: Vx.gray500,
            fontSize: Vx.dp16,
            fontWeight: FontWeight.w700,
          ),
          filled: false,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

/**
 * Consequat tempor reprehenderit in ad. Et sint dolore Lorem laborum esse enim reprehenderit cupidatat tempor. Excepteur eu culpa deserunt magna culpa culpa ut exercitation aliquip commodo aute. Ad est veniam aliqua quis nisi commodo non. Fugiat est elit exercitation in amet officia fugiat eiusmod do.
 */