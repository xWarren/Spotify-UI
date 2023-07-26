import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/core/resources/assets.dart';
import 'package:spotify_clone_ui/app/core/resources/colors.dart';
import 'package:spotify_clone_ui/app/core/routes/routes.dart';
import 'package:spotify_clone_ui/app/features/dashboard/dashboard_controller.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Center(child: Image.asset(Assets.logo)),
        const SizedBox(height: 20),
        _buildMillionOfSongsText(),
        _buildFreeOnSpotifyText(),
        const SizedBox(height: 20),
        _buildSignUpFreeButton(),
        _buildGoogleButton(),
        _buildFacebookButton(),
        _buildAppleButton(),
        const SizedBox(height: 5),
        _buildLoginButton(),
        const SizedBox(height: 20),
      ],
    ));
  }

  Text _buildFreeOnSpotifyText() {
    return Text("Free on Spotify.",
        style: TextStyle(
            color: ColorPalette.titleColor,
            fontWeight: FontWeight.bold,
            fontSize: 20));
  }

  Text _buildMillionOfSongsText() {
    return Text("Million of Songs.",
        style: TextStyle(
            color: ColorPalette.titleColor,
            fontWeight: FontWeight.bold,
            fontSize: 20));
  }

  GestureDetector _buildLoginButton() {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.login);
      },
      child: Text("Login",
          style: TextStyle(
            color: ColorPalette.titleColor,
            fontWeight: FontWeight.w700,
            fontSize: 15,
          )),
    );
  }

  Padding _buildAppleButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
          width: Get.width / 1.5,
          height: 40,
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: ColorPalette.titleColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45),
                  )),
              onPressed: () {},
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(Assets.apple),
                    Expanded(
                        child: Center(
                            child: Text(
                      "Continue with Apple",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: ColorPalette.titleColor,
                          fontSize: 15),
                    )))
                  ]))),
    );
  }

  Padding _buildFacebookButton() {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: SizedBox(
            width: Get.width / 1.5,
            height: 40,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: ColorPalette.titleColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45),
                    )),
                onPressed: () {},
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(Assets.facebook),
                      Expanded(
                          child: Center(
                              child: Text(
                        "Continue with Facebook",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: ColorPalette.titleColor,
                            fontSize: 15),
                      )))
                    ]))));
  }

  Padding _buildGoogleButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
          width: Get.width / 1.5,
          height: 40,
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: ColorPalette.titleColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45),
                  )),
              onPressed: () {},
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(Assets.google),
                    Expanded(
                        child: Center(
                            child: Text(
                      "Continue with Google",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: ColorPalette.titleColor,
                          fontSize: 15),
                    )))
                  ]))),
    );
  }

  Padding _buildSignUpFreeButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
          width: Get.width / 1.5,
          height: 40,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: ColorPalette.button1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45))),
              onPressed: () {
                Get.toNamed(Routes.register);
              },
              child: Text("Sign up Free",
                  style: TextStyle(
                    color: ColorPalette.dashboardColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  )))),
    );
  }
}
