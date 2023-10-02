import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/classes/image_assets.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({super.key});

  @override
  Widget build(BuildContext context) {
    double heightContainer = MediaQuery.of(context).size.height / 2;
    return Scaffold(
      body: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, i) {
            return CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20.h, vertical: kToolbarHeight),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: heightContainer,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(AppAssets.s),
                                fit: BoxFit.fill),
                            color: AppColor.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.h),
                              topRight: Radius.circular(30.h),
                              bottomLeft: Radius.circular(30.h),
                              bottomRight: Radius.circular(120.h),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: heightContainer / 8,
                        ),
                        Text(
                          "20% Discount\nNew Arrival Products",
                          style: AppFonts.bold_25,
                        ),
                        SizedBox(
                          height: heightContainer / 16,
                        ),
                        Text(
                          "publish up your selfies to make your self more beuatiful with this app",
                          style: AppFonts.regular_16
                              .copyWith(color: AppColor.darkGrey),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            ...List.generate(
                                3,
                                (index) => Text(
                                      ".",
                                      style: AppFonts.bold_25,
                                    )),
                            const Spacer(),
                            CustomIconLeftOrRight(
                              icon: AppIcon.arrowRight,
                              onPressed: () {},
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}

class CustomIconLeftOrRight extends StatelessWidget {
  const CustomIconLeftOrRight(
      {super.key,
      this.onPressed,
      required this.icon,
      this.colorCircleAvatar,
      this.colorImage,
      this.radiusCircle,
      this.heightIcon});
  final Function()? onPressed;
  final IconData icon;
  final Color? colorCircleAvatar;
  final double? radiusCircle;
  final Color? colorImage;
  final double? heightIcon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radiusCircle ?? 26.h,
      backgroundColor: colorCircleAvatar ?? AppColor.blacK,
      child: Image.asset(
        AppAssets.iconRight,
        height: heightIcon ?? 12.h,
        color: colorImage ?? AppColor.white,
      ),
    );
  }
}
