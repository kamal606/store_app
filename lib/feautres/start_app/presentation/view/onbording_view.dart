import 'package:flutter/material.dart';
import 'package:store_app/core/color/app_color.dart';

import 'package:store_app/feautres/start_app/presentation/widgets/onbording/onbording_body.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.background,
      body: OnBordingViewBody(),
    );
  }
}
