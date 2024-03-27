import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_ninja/const/color/app_colors.dart';
import 'package:task_ninja/features/home/view/widget/frosted_glass_box.dart';

class FrostedTodoForm extends StatelessWidget {
  const FrostedTodoForm({
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
              color: AppColors.kSecondPrimaryBgColor.withOpacity(0.7),
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
                color: AppColors.kSecondPrimaryBgColor.withOpacity(0.5),
                fontWeight: FontWeight.bold,
              ),
              errorStyle: const TextStyle(color: AppColors.kErrorColor),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(8),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.kErrorColor, width: 1.0),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.kErrorColor, width: 1.0),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
