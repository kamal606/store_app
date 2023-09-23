import 'package:flutter/material.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/utils/icons.dart';
import 'package:store_app/core/widgets/custom_appbar.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/home_view_body.dart';

import '../../../../core/constant/image_assets.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          iconLeading: AppIcon.solidChessRook,
          onPressedLeading: () {},
          action: CircleAvatar(
            backgroundColor: AppColor.grey,
            child: Image.asset(
              AppAssets.avatarProfile,
            ),
          ),
        ),
        body: const HomeViewBody());
  }
}
