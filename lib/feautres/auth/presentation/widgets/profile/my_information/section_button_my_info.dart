import 'package:flutter/material.dart';
import 'package:store_app/core/widgets/custom_elvated_button.dart';
import 'package:store_app/generated/l10n.dart';

class SectionButtonMyInfo extends StatelessWidget {
  const SectionButtonMyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElvatedButton(
      onPressed: () {},
      title: S.of(context).update,
      isRadius: false,
    );
  }
}
