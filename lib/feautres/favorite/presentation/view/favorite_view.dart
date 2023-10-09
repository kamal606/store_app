import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/utils/go_router.dart';
import 'package:store_app/core/widgets/custom_appbar.dart';
import 'package:store_app/feautres/favorite/presentation/widget/body_favorite_view.dart';
import 'package:store_app/generated/l10n.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconAction: AppIcon.bagShopping,
        isAction: true,
        titleAppbar: S.of(context).favoriteView,
        onPressedAction: () {
          context.push(AppRouter.cartView);
        },
      ),
      body: const FavoriteViewBody(),
    );
  }
}
