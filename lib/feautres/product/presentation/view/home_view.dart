import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/constant/route_name.dart';
import 'package:store_app/core/utils/icons.dart';
import 'package:store_app/core/widgets/custom_appbar.dart';
import 'package:store_app/core/widgets/custom_text_form_field.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/carouse_slider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: RouteName.home),
        builder: (context) => const HomeView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        action1: AppIcon.notifcation,
        action2: AppIcon.cart,
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 30.h),
        child: Column(
          children: [
            CutomTextFormField(
              hint: "Search Product Name",
              suffixIcon: AppIcon.search,
              onPressed: () {},
            ),
            SizedBox(
              height: 30.h,
            ),
            const CustomCarouseSlider(),
          ],
        ),
      ),
    );
  }
}
