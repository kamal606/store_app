import 'package:flutter/material.dart';
import 'package:store_app/core/fonts/app_font.dart';
import 'package:store_app/core/widgets/custom_elvated_button.dart';

class SectionPriceAndButtonCart extends StatelessWidget {
  const SectionPriceAndButtonCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Total Price",
              style: AppFonts.regular_9,
            ),
            Text(
              r"$198.00",
              style: AppFonts.bold_18,
            ),
          ],
        ),
        CustomElvatedButton(
          onPressed: () {},
          title: "Add to cart",
        )
      ],
    );
  }
}
