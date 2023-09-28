import 'package:flutter/material.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/home_view_body.dart';

import '../widgets/home/custom_nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: HomeViewBody(),
    );
  }
}
