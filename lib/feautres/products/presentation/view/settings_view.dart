import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/widgets/custom_appbar.dart';
import 'package:store_app/feautres/products/presentation/widgets/settings/body_settings.dart';
import 'package:store_app/generated/l10n.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onPressedLeading: () {
          context.pop();
        },
        isCircleOnLeading: false,
        isLeading: true,
        titleAppbar: S.of(context).settings,
      ),
      body: const BodySettings(),
    );
  }
}
