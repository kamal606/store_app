import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/function/dialog.dart';
import 'package:store_app/feautres/cart/presentation/bloc/cart/cart_bloc.dart';
import 'package:store_app/feautres/cart/presentation/widget/section_list_product.dart';
import 'package:store_app/feautres/favorite/presentation/widget/section_form_field.dart';
import 'package:store_app/generated/l10n.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

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
              BlocProvider.of<CartBloc>(context)
                  .add(SearchInCartEvent(query: value));
            },
            onPressedIconDelete: () async {
              await customShowMyDialog(
                context: context,
                onPressedCancel: () {
                  context.pop();
                },
                onPressedAgree: () async {
                  BlocProvider.of<CartBloc>(context)
                      .add(ClearAllFromCartEvent());
                  if (!context.mounted) return;
                  context.pop();
                },
                title: S.of(context).dialogCart,
              );
            },
          ),
          SizedBox(
            height: 30.h,
          ),
          const SectionListProductCart(),
        ],
      ),
    );
  }
}
