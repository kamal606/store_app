import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/utils/go_router.dart';
import 'package:store_app/feautres/auth/presentation/widgets/profile/custom_body_hedline.dart';
import 'package:store_app/feautres/auth/presentation/widgets/profile/custom_title_hedline.dart';

import 'package:store_app/generated/l10n.dart';

class SectionContentInfoProflieView extends StatelessWidget {
  const SectionContentInfoProflieView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //!======= personal information ======
        CustomTitleHeadlines(
          titleHedline: S.of(context).personalInfo,
        ),
        CustomBodyHedline(
          titleBodyHedline: S.of(context).myInfo,
          onPressed: () {
            context.push(AppRouter.myInformationView);
          },
        ),
        SizedBox(
          height: 20.h,
        ),
        //!======= content ======
        CustomTitleHeadlines(
          titleHedline: S.of(context).content,
        ),
        CustomBodyHedline(
          titleBodyHedline: S.of(context).favorite,
          onPressed: () {
            context.push(AppRouter.favoriteView);
          },
        ),
        CustomBodyHedline(
          titleBodyHedline: S.of(context).cart,
          onPressed: () {
            context.push(AppRouter.cartView);
          },
        ),
        SizedBox(
          height: 20.h,
        ),
        //!======= preferences ======
        CustomTitleHeadlines(
          titleHedline: S.of(context).preferences,
        ),
        CustomBodyHedline(
          titleBodyHedline: S.of(context).language,
          onPressed: () {
            context.push(AppRouter.settings);
          },
        ),
      ],
    );
  }
}
