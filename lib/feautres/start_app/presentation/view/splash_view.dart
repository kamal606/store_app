import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:store_app/core/classes/image_assets.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/utils/go_router.dart';
import 'package:store_app/feautres/start_app/data/local_data_source/open_onbording_once.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    //========= animate logo ==============
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeIn,
      ),
    );
    _animationController.forward();

    Timer(const Duration(seconds: 2), () async {
      //open box
      Box box = await SaveStartViewAppLocal.openBox();
      //if value box == false : put the value true and go to onbording
      //else if the value == true go to the home
      if (await SaveStartViewAppLocal.getIsOpen(box) == false) {
        if (!context.mounted) return;
        context.replace(AppRouter.loginOrSkip);
        await SaveStartViewAppLocal.addViewStartApp(box);
      } else {
        if (!context.mounted) return;
        context.replace(AppRouter.homeView);
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: _animation,
        child: Container(
          decoration: BoxDecoration(gradient: AppColor.linearGradient()),
          child: Center(
            child: Image.asset(
              AppAssets.logoApp,
              height: 250.h,
              width: 250.h,
            ),
          ),
        ),
      ),
    );
  }
}
