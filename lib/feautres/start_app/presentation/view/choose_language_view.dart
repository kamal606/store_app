import 'package:flutter/material.dart';
import 'package:store_app/feautres/start_app/presentation/widgets/choose_language/body_choose_language.dart';

class ChooseLanguageView extends StatelessWidget {
  const ChooseLanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChooseLanguageViewBody(),
    );
  }
}
