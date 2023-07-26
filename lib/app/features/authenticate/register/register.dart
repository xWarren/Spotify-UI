import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/core/resources/assets.dart';
import 'package:spotify_clone_ui/app/core/resources/colors.dart';
import 'package:spotify_clone_ui/app/features/authenticate/register/register_controller.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: Obx(
          () => PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller.pageController,
            children: [
              _buildEmail(),
              _buildPassword(),
              _buildName(),
            ],
          ),
        ));
  }

  SingleChildScrollView _buildName() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What’s your name?",
              style: TextStyle(
                  color: ColorPalette.titleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: TextFormField(
                controller: controller.nameController,
                onChanged: (text) {
                  controller.nameLength.value = text.length;
                },
                style: TextStyle(color: ColorPalette.titleColor),
                decoration: InputDecoration(
                    counterStyle: TextStyle(color: ColorPalette.titleColor),
                    fillColor: ColorPalette.fieldColor,
                    filled: true,
                    labelStyle: TextStyle(color: ColorPalette.titleColor),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            const SizedBox(height: 10),
            Text("This appears on your spotify profile",
                style: TextStyle(color: ColorPalette.titleColor, fontSize: 10)),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.white,
            ),
            const SizedBox(height: 10),
            Text(
                "By tapping on Create account, you agree to the spotify Terms of Use.",
                style: TextStyle(color: ColorPalette.titleColor, fontSize: 10)),
            const SizedBox(height: 10),
            Text("Terms of Use",
                style: TextStyle(color: ColorPalette.button1, fontSize: 10)),
            const SizedBox(height: 10),
            Text(
                "To learn more about how Spotify collect, uses, shares and protects your personal data, Please see the Spotify Privacy Policy.",
                style: TextStyle(color: ColorPalette.titleColor, fontSize: 10)),
            const SizedBox(height: 10),
            Text("Privacy Policy",
                style: TextStyle(color: ColorPalette.button1, fontSize: 10)),
            Row(
              children: [
                Expanded(
                  flex: 17,
                  child: Text("Please send me news and offers from Spotify.",
                      style: TextStyle(
                          color: ColorPalette.titleColor, fontSize: 10)),
                ),
                Expanded(
                  flex: 1,
                  child: Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.yellow;
                      }
                      return Colors.grey;
                    }),
                    checkColor: ColorPalette.titleColor,
                    value: controller.newsTile.value,
                    activeColor: ColorPalette.titleColor,
                    onChanged: (value) {
                      controller.newsTile.value = !controller.newsTile.value;
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 17,
                  child: Text(
                      "Share my registration data with Spotify's content providers for \nmarketing purposes.",
                      maxLines: 2,
                      style: TextStyle(
                          color: ColorPalette.titleColor, fontSize: 10)),
                ),
                Expanded(
                  child: Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.yellow;
                      }
                      return Colors.grey;
                    }),
                    checkColor: ColorPalette.titleColor,
                    value: controller.registrationTile.value,
                    activeColor: ColorPalette.titleColor,
                    onChanged: (value) {
                      controller.registrationTile.value =
                          !controller.registrationTile.value;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 200),
            controller.nameLength.value > 5
                ? Center(
                    child: SizedBox(
                      width: Get.width / 2.5,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ColorPalette.titleColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {
                            controller.registered();
                          },
                          child: Text("Create an account",
                              style: TextStyle(
                                  color: controller.passwordLength.value > 5
                                      ? ColorPalette.dashboardColor
                                      : ColorPalette.titleColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700))),
                    ),
                  )
                : Center(
                    child: Container(
                        width: Get.width / 2.5,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: ColorPalette.registerButton,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text("Create an account",
                            style: TextStyle(
                                color: ColorPalette.dashboardColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w700))),
                  ),
          ],
        ),
      ),
    );
  }

  Column _buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          child: Text(
            "Create a password?",
            style: TextStyle(
                color: ColorPalette.titleColor,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          child: SizedBox(
            height: 50,
            child: TextFormField(
              controller: controller.passwordController,
              onChanged: (text) {
                controller.passwordLength.value = text.length;
              },
              style: TextStyle(color: ColorPalette.titleColor),
              decoration: InputDecoration(
                  counterStyle: TextStyle(color: ColorPalette.titleColor),
                  fillColor: ColorPalette.fieldColor,
                  filled: true,
                  labelStyle: TextStyle(color: ColorPalette.titleColor),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          child: Text("Use atleast 8 characters.",
              style: TextStyle(color: ColorPalette.titleColor, fontSize: 10)),
        ),
        const SizedBox(height: 50),
        controller.passwordLength.value > 5
            ? Center(
                child: SizedBox(
                  width: Get.width / 4.5,
                  height: 40,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorPalette.registerButton,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {
                        controller.redirectScreen(
                            controller.passwordController.value.text);
                      },
                      child: Text("Next",
                          style: TextStyle(
                              color: controller.passwordLength.value > 5
                                  ? ColorPalette.titleColor
                                  : ColorPalette.dashboardColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w700))),
                ),
              )
            : Center(
                child: Container(
                    width: Get.width / 4.5,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: ColorPalette.registerButton,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text("Next",
                        style: TextStyle(
                            color: ColorPalette.dashboardColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w700))),
              ),
      ],
    );
  }

  Column _buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          child: Text(
            "What's your email?",
            style: TextStyle(
                color: ColorPalette.titleColor,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          child: SizedBox(
            height: 50,
            child: TextFormField(
              controller: controller.emailController,
              onChanged: (text) {
                controller.emailLength.value = text.length;
              },
              style: TextStyle(color: ColorPalette.titleColor),
              decoration: InputDecoration(
                  counterStyle: TextStyle(color: ColorPalette.titleColor),
                  fillColor: ColorPalette.fieldColor,
                  filled: true,
                  labelStyle: TextStyle(color: ColorPalette.titleColor),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          child: Text("You'll need to confirm this email later.",
              style: TextStyle(color: ColorPalette.titleColor, fontSize: 10)),
        ),
        const SizedBox(height: 50),
        controller.emailLength.value > 5
            ? Center(
                child: SizedBox(
                  width: Get.width / 4.5,
                  height: 40,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorPalette.registerButton,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {
                        controller.redirectScreen(
                            controller.emailController.value.text);
                      },
                      child: Text("Next",
                          style: TextStyle(
                              color: controller.emailLength.value > 5
                                  ? ColorPalette.titleColor
                                  : ColorPalette.dashboardColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w700))),
                ),
              )
            : Center(
                child: Container(
                    width: Get.width / 4.5,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: ColorPalette.registerButton,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text("Next",
                        style: TextStyle(
                            color: ColorPalette.dashboardColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w700))),
              ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
                onTap: () {
                  controller.getBack();
                },
                child: Image.asset(Assets.back)),
            Expanded(
              child: Center(
                child: Text(
                  "Create Account",
                  style:
                      TextStyle(color: ColorPalette.titleColor, fontSize: 15),
                ),
              ),
            ),
          ],
        ));
  }
}
