import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/function/check_local_arabic.dart';
import 'package:store_app/feautres/favorite/data/local_data_source/icon_favorite_save_local.dart';
import 'package:store_app/feautres/favorite/presentation/blocs/favorite/favorite_bloc.dart';
import 'package:store_app/feautres/favorite/presentation/widget/section_card_product.dart';
import 'package:store_app/feautres/favorite/presentation/widget/section_empty_favorite.dart';
import '../../../../core/function/toast_flutter.dart';

class SectionListProduct extends StatelessWidget {
  const SectionListProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavoriteBloc, FavoriteState>(
      listener: (context, state) {
        if (state is FavoriteFailure) {
          toast(message: state.errorMessage, color: AppColor.erorr);
        }
      },
      builder: (context, state) {
        if (state is FavoriteLoading) {
          return const Expanded(
              child: Center(child: CircularProgressIndicator()));
        }
        if (state is FavoriteSuccess) {
          if (state.favoriteEntity.listProductEntity.isEmpty) {
            return const Expanded(child: SectionEmptyFavorite());
          } else {
            return Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.favoriteEntity.listProductEntity.length,
                  itemBuilder: (context, i) {
                    return Dismissible(
                      background: Container(
                        alignment: isArabicLocale()
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        padding: EdgeInsets.only(
                            right: isArabicLocale() ? 0 : 30.h,
                            left: isArabicLocale() ? 30.h : 0),
                        margin: EdgeInsets.only(bottom: 15.h),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(14.h),
                        ),
                        child: Icon(
                          AppIcon.trash,
                          size: 16.h,
                          color: Theme.of(context).colorScheme.primaryContainer,
                        ),
                      ),
                      key: UniqueKey(),
                      onDismissed: (direction) {
                        if (direction == DismissDirection.endToStart) {
                          BlocProvider.of<FavoriteBloc>(context).add(
                              RemoveFavoriteEvent(
                                  productEntity: state
                                      .favoriteEntity.listProductEntity[i]));
                          FavoriteIconSaveLocal.removeColorToIcon(
                              state.favoriteEntity.listProductEntity[i]);
                        }
                      },
                      confirmDismiss: (direction) async {
                        if (direction == DismissDirection.startToEnd) {
                          return false;
                        }
                        return true;
                      },
                      child: CustomCardWishlist(
                        productEntity:
                            state.favoriteEntity.listProductEntity[i],
                      ),
                    );
                  }),
            );
          }
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
