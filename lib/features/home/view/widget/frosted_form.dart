import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_ninja/features/home/view/widget/frosted_glass_box.dart';

class FrostedForm extends StatelessWidget {
  const FrostedForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FrostedGlassBox(
      width: double.infinity,
      height: 200,
      child: Column(
        children: [
          FormBuilderTextField(
            name: "note",
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onTap: () {},
            style: GoogleFonts.inter(
              fontSize: 16,
              color: Colors.white.withOpacity(0.7),
              fontWeight: FontWeight.bold,
            ),
            minLines: 3,
            maxLines: 10,
            // focusNode: focusNode,
            keyboardType: TextInputType.multiline,
            // validator: validator,
            textInputAction: TextInputAction.newline,
            decoration: InputDecoration(
              hintText: "Add your note 💡",
              filled: true,
              fillColor: Colors.transparent,
              hintStyle: TextStyle(
                fontSize: 16,
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.bold,
              ),
              errorStyle: const TextStyle(color: Colors.orange),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(8),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 1.0),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 1.0),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
