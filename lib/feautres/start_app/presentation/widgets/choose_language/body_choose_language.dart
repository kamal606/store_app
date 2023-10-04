import 'package:flutter/material.dart';
import 'package:store_app/feautres/start_app/presentation/widgets/choose_language/section_button.dart';
import 'package:store_app/feautres/start_app/presentation/widgets/choose_language/section_image.dart';
import 'package:store_app/feautres/start_app/presentation/widgets/choose_language/section_text.dart';

class ChooseLanguageViewBody extends StatelessWidget {
  const ChooseLanguageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SectionImageChooseLanguage(),
        SectionTextChooseLanguage(),
        SectionButtonLanguage(),
      ],
    );
  }
}
