import 'package:flutter/material.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/widgets/custom_appbar.dart';
import 'package:store_app/feautres/cart/presentation/widget/body_cart_view.dart';
import 'package:store_app/generated/l10n.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titleAppbar: S.of(context).cartView,
        iconAction: AppIcon.bagShopping,
        onPressedAction: null,
        isAction: true,
      ),
      body: const CartViewBody(),
    );
  }
}
