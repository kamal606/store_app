import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/classes/image_assets.dart';
import 'package:store_app/core/color/app_color.dart';
import 'package:store_app/core/utils/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    //initlize controller
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));

    //transation animate controller
    _animationController.forward();

    // transfer to onBording View
    Future.delayed(const Duration(milliseconds: 2000), () async {
      return await context.push(AppRouter.onBordingView);
    });
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:
            BoxDecoration(gradient: AppColor.linearGradientSplashBody()),
        child: Center(
          child: AnimatedBuilder(
            animation: _animationController,
            child: Image.asset(
              AppAssets.logoApp,
              width: MediaQuery.of(context).size.width / 2,
            ),
            builder: (context, child) {
              return Transform.rotate(
                angle: _animationController.value * 12.6,
                child: child,
              );
            },
          ),
        ),
      ),
    );
  }
}
