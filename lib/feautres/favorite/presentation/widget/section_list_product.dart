import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/feautres/favorite/presentation/blocs/favorite/favorite_bloc.dart';
import 'package:store_app/feautres/favorite/presentation/widget/section_card_product.dart';
import 'package:store_app/feautres/favorite/presentation/widget/section_empty_favorite.dart';
import '../../../../../core/widgets/custom_flutter_toast.dart';

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
          return const Center(child: CircularProgressIndicator());
        }
        if (state is FavoriteSuccess) {
          if (state.favoriteEntity.listProductEntity.isEmpty) {
            return const Center(child: SectionEmptyFavorite());
          } else {
            return Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.favoriteEntity.listProductEntity.length,
                  itemBuilder: (context, i) {
                    return CustomCardWishlist(
                      productEntity: state.favoriteEntity.listProductEntity[i],
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
