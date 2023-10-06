import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/classes/icons.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/fonts/app_font.dart';
import 'package:store_app/core/widgets/custom_elvated_button.dart';
import 'package:store_app/feautres/cart/presentation/bloc/cart/cart_bloc.dart';

class SectionPriceAndProceedCart extends StatefulWidget {
  const SectionPriceAndProceedCart({super.key});

  @override
  State<SectionPriceAndProceedCart> createState() =>
      _SectionPriceAndProceedCartState();
}

class _SectionPriceAndProceedCartState
    extends State<SectionPriceAndProceedCart> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          expanded ? kToolbarHeight : MediaQuery.of(context).size.height / 3.5,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(blurRadius: 3.h, color: AppColor.darkGrey),
        ],
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state is CartLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is CartSuccess) {
            return Stack(
              alignment: Alignment.topRight,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 40.h, right: 40.h),
                  child: Column(
                    children: [
                      if (expanded) ...[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "BagTotal:",
                              style: AppFonts.bold_16,
                            ),
                            const Spacer(),
                            Text(
                              "\$${state.cartEntity.stringBagTotal}",
                              style: AppFonts.semiBold_18,
                            )
                          ],
                        ),
                      ],
                      if (!expanded) ...[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "SubTotal",
                              style: AppFonts.bold_16,
                            ),
                            const Spacer(),
                            Text(
                              "\$${state.cartEntity.stringSubTotal}",
                              style: AppFonts.bold_16,
                            )
                          ],
                        ),
                        const Divider(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Shipping",
                              style: AppFonts.bold_16,
                            ),
                            const Spacer(),
                            Text(
                              "\$${state.cartEntity.stringShippingPrice}",
                              style: AppFonts.bold_16,
                            )
                          ],
                        ),
                        const Divider(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "BagTotal",
                              style: AppFonts.bold_16,
                            ),
                            const Spacer(),
                            Text(
                              "\$${state.cartEntity.stringBagTotal}",
                              style: AppFonts.bold_16,
                            )
                          ],
                        ),
                        const Divider(),
                        SizedBox(
                          width: double.infinity,
                          height: 40.h,
                          child: CustomElvatedButton(
                            onPressed: () {},
                            title: "Proceed to Checkout",
                          ),
                        )
                      ]
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        expanded = !expanded;
                      });
                    },
                    icon: Icon(expanded ? AppIcon.expand : AppIcon.notExpand))
              ],
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
