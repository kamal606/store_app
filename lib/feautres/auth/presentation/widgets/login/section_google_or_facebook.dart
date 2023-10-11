import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/image_assets.dart';
import 'package:store_app/feautres/auth/presentation/widgets/login/custom_container_facbook_or_google.dart';

class SectionGoogleOrFacebook extends StatelessWidget {
  const SectionGoogleOrFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomContainerLoginFacebookOrGoogle(
          image: AppAssets.google,
          onTap: () {},
        ),
        SizedBox(
          width: 10.h,
        ),
        CustomContainerLoginFacebookOrGoogle(
          image: AppAssets.facbook,
          onTap: () {},
        ),
      ],
    );
  }
}
