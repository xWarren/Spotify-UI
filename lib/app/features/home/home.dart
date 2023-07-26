import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/core/resources/colors.dart';
import 'package:spotify_clone_ui/app/features/home/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(
            "Home Screen",
            style: TextStyle(color: ColorPalette.titleColor),
          ),
        )
      ]),
    );
  }
}
