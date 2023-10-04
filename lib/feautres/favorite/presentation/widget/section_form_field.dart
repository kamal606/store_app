import 'package:flutter/material.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/widgets/custom_text_form_field.dart';

class SectionFormField extends StatelessWidget {
  const SectionFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hint: "Search...",
      prefixIcon: AppIcon.search,
      onPressed: () {},
    );
  }
}
