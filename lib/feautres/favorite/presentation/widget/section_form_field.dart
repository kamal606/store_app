import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/function/dialog.dart';
import 'package:store_app/core/widgets/custom_text_form_field.dart';
import 'package:store_app/feautres/favorite/data/local_data_source/icon_favorite_save_local.dart';
import 'package:store_app/feautres/favorite/presentation/blocs/favorite/favorite_bloc.dart';

import 'package:store_app/generated/l10n.dart';

class SectionFormFieldAndDeleteAll extends StatelessWidget {
  const SectionFormFieldAndDeleteAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextFormField(
            hint: S.of(context).Search,
            prefixIcon: AppIcon.search,
            onPressedPrefixIcon: () {},
            color: AppColor.white,
            onChanged: (value) {
              BlocProvider.of<FavoriteBloc>(context)
                  .add(SearchFavoriteEvent(query: value));
              print("=============$value===========");
            },
          ),
        ),
        IconButton(
            onPressed: () async {
              await customShowMyDialog(
                context: context,
                onPressedCancel: () {
                  context.pop();
                },
                onPressedAgree: () async {
                  BlocProvider.of<FavoriteBloc>(context)
                      .add(RemoveAllFavoriteEvent());
                  await FavoriteIconSaveLocal.clearAllColorIcon();
                  if (!context.mounted) return;
                  context.pop();
                },
                title: S.of(context).dialogFavorite,
              );
            },
            icon: Icon(
              AppIcon.trash,
              size: 22.h,
            ))
      ],
    );
  }
}
