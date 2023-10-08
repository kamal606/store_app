import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/classes/image_assets.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';
import 'package:store_app/core/utils/go_router.dart';
import 'package:store_app/core/widgets/custom_elvated_button.dart';
import 'package:store_app/feautres/localization/domain/enum_locale.dart';
import 'package:store_app/feautres/localization/presntation/locale_bloc/locale_bloc.dart';

class SectionButtonLanguage extends StatelessWidget {
  const SectionButtonLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.6,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: AppColor.linearGradient(),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      child: BlocBuilder<AppLocaleBloc, AppLocaleState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Select Language",
                style: AppFonts.bold_18.copyWith(color: AppColor.white),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 100.h,
                height: 40.h,
                child: CustomElvatedButton(
                  backgroundColor: AppColor.darkGrey,
                  imageAction: AppAssets.flagUsa,
                  isAction: true,
                  onPressed: () {
                    BlocProvider.of<AppLocaleBloc>(context).add(
                        const ChangeLocaleEvent(
                            appLanguage: AppLocale.english));
                    context.replace(AppRouter.onBordingView);
                  },
                  titleAction: "ENGLISH",
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 100.h,
                height: 40.h,
                child: CustomElvatedButton(
                  backgroundColor: AppColor.darkGrey,
                  imageAction: AppAssets.flagSyria,
                  isAction: true,
                  onPressed: () {
                    BlocProvider.of<AppLocaleBloc>(context).add(
                        const ChangeLocaleEvent(appLanguage: AppLocale.arabic));
                    context.replace(AppRouter.onBordingView);
                  },
                  titleAction: "ARABIC",
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
