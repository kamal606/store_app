import 'package:flutter/material.dart';
import 'package:store_app/core/utils/icons.dart';
import 'package:store_app/core/widgets/custom_appbar.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(
          action1: AppIcon.notifcation,
          action2: AppIcon.cart,
        ),
        body: HomeViewBody());
  }
}
