import 'package:flutter/material.dart';

import 'drop_down_theme.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomDropDownButtonThemeApp(),
          CustomDropDownButtonThemeApp(),
        ],
      ),
    );
  }
}
