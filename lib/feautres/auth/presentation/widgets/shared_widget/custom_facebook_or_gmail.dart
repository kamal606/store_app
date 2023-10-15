import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/classes/image_assets.dart';
import '../login/custom_container_facbook_or_google.dart';

class CustomFacebookOrGmail extends StatelessWidget {
  const CustomFacebookOrGmail(
      {super.key, this.onPressedGmail, this.onPressedFacbook});
  final Function()? onPressedGmail;
  final Function()? onPressedFacbook;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomContainerLoginFacebookOrGoogle(
          image: AppAssets.google,
          onTap: onPressedGmail,
        ),
        SizedBox(
          width: 10.h,
        ),
        CustomContainerLoginFacebookOrGoogle(
          image: AppAssets.facbook,
          onTap: onPressedFacbook,
        ),
      ],
    );
  }
}
