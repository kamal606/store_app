import 'package:flutter/material.dart';
import 'package:store_app/feautres/product/presentation/view/cart_view.dart';
import 'package:store_app/feautres/product/presentation/view/favorite_view.dart';
import 'package:store_app/feautres/product/presentation/view/profile_view.dart';
import 'package:store_app/feautres/product/presentation/widgets/home/home_view_body.dart';

import '../widgets/home/custom_nav_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeViewBody(),
    const CartView(),
    const FavoriteView(),
    const ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
          currentIndex: _selectedIndex, onTap: _onItemTapped),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
