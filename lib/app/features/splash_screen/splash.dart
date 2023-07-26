import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/core/resources/assets.dart';
import 'package:spotify_clone_ui/app/features/splash_screen/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            Assets.loadingLogo,
            height: 150,
            width: 150,
          ),
        ),
      ],
    ));
  }
}
