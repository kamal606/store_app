import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/image_assets.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/feautres/theme/domain/model/theme.dart';
import 'package:store_app/feautres/theme/presentation/bloc/theme_app/theme_app_bloc.dart';

class SectionImageProfileView extends StatelessWidget {
  const SectionImageProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 3.5,
          decoration: BoxDecoration(
            gradient: AppColor.linearGradient(),
          ),
        ),
        BlocBuilder<AppThemeBloc, AppThemeState>(
          builder: (context, state) {
            final Color checkTheme =
                (state as ChangedThemeState).changedTheme ==
                        theme[AppTheme.dark]
                    ? AppColor.darkTheme
                    : AppColor.background;
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: checkTheme,
                    border: Border.all(
                      width: 0,
                      color: checkTheme,
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 62.h,
                  backgroundColor: checkTheme,
                  child: CircleAvatar(
                    backgroundColor: checkTheme,
                    radius: 60.h,
                    foregroundImage: const AssetImage(AppAssets.avatarProfile),
                  ),
                )
              ],
            );
          },
        )
      ],
    );
  }
}
