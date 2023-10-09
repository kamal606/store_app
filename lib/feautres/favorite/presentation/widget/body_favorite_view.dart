import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/function/dialog_cart_and_favorite.dart';
import 'package:store_app/feautres/favorite/data/local_data_source/icon_favorite_save_local.dart';
import 'package:store_app/feautres/favorite/presentation/blocs/favorite/favorite_bloc.dart';
import 'package:store_app/feautres/favorite/presentation/widget/section_form_field.dart';
import 'package:store_app/feautres/favorite/presentation/widget/section_list_product.dart';
import 'package:store_app/generated/l10n.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        top: 20.h,
      ),
      child: Column(
        children: [
          SectionFormFieldAndDeleteAllFavoriteAndCart(
            onChanged: (value) {
              BlocProvider.of<FavoriteBloc>(context)
                  .add(SearchFavoriteEvent(query: value));
            },
            onPressedIconDelete: () async {
              await customDialogDeleteCartAndFavorite(
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
          ),
          SizedBox(
            height: 30.h,
          ),
          const SectionListProductFavorite(),
        ],
      ),
    );
  }
}
