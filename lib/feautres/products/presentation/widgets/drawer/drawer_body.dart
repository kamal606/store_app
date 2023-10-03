import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/function/check_local_arabic.dart';
import 'package:store_app/feautres/localization/domain/enum_locale.dart';
import 'package:store_app/feautres/localization/presntation/locale_bloc/locale_bloc.dart';
import 'package:store_app/feautres/products/presentation/widgets/drawer/section_circle_avatar.dart';
import 'package:store_app/feautres/products/presentation/widgets/drawer/section_image_with_info_user.dart';
import 'package:store_app/feautres/products/presentation/widgets/drawer/section_items_body.dart';
import 'package:store_app/feautres/products/presentation/widgets/drawer/section_sign_out.dart';
import 'package:store_app/feautres/theme/domain/model/theme.dart';
import 'package:store_app/feautres/theme/presentation/bloc/theme_app/theme_app_bloc.dart';

import 'custom_drop_down_item.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    double widthDrawer = MediaQuery.of(context).size.width / 1.2;
    double widthNameWithEmail = widthDrawer - 110.h;
    return SizedBox(
      width: widthDrawer,
      child: Drawer(
        child: BlocBuilder<AppThemeBloc, AppThemeState>(
          builder: (context, state) {
            bool isDarkTheme = (state as ChangedThemeState).changedTheme ==
                theme[AppTheme.dark];
            return CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Stack(
                    children: [
                      SectionCircleAvatar(isDarkTheme: isDarkTheme),
                      Padding(
                        padding: EdgeInsets.only(
                            left: isArabicLocale() ? 0 : 20.h,
                            right: isArabicLocale() ? 20.h : 0,
                            top: 50.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SectionImageWithInfoUser(
                                widthNameWithEmail: widthNameWithEmail),
                            SizedBox(
                              height: 60.h,
                            ),
                            SectionItemsBody(
                                isDarkTheme: isDarkTheme,
                                widthDrawer: widthNameWithEmail),
                            CustomDropDownButton(
                              list: AppLocale.values,
                              onChanged: (val) {
                                if (val == AppLocale.arabic.name) {
                                  context.read<AppLocaleBloc>().add(
                                      const ChangeLocaleEvent(
                                          appLanguage: AppLocale.arabic));
                                }
                                if (val == AppLocale.english.name) {
                                  context.read<AppLocaleBloc>().add(
                                      const ChangeLocaleEvent(
                                          appLanguage: AppLocale.english));
                                }
                                context.pop();
                              },
                            ),
                            CustomDropDownButton(
                              list: AppTheme.values,
                              onChanged: (val) {
                                if (val == AppTheme.dark.name) {
                                  context.read<AppThemeBloc>().add(
                                      const ChangeThemeEvent(
                                          changeTheme: AppTheme.dark));
                                }
                                if (val == AppTheme.light.name) {
                                  context.read<AppThemeBloc>().add(
                                      const ChangeThemeEvent(
                                          changeTheme: AppTheme.light));
                                }
                              },
                            ),
                            const Spacer(),
                            SectionSignOut(isDarkTheme: isDarkTheme),
                            SizedBox(
                              height: 20.h,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
