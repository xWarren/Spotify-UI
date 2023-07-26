import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/core/resources/assets.dart';
import 'package:spotify_clone_ui/app/core/resources/colors.dart';
import 'package:spotify_clone_ui/app/core/routes/routes.dart';
import 'package:spotify_clone_ui/app/features/authenticate/login/login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: controller.key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildWelcomeText(),
              const SizedBox(height: 50),
              _buildEmailText(),
              _buildEmailField(),
              _buildPasswordText(),
              _buildPasswordField(),
              const SizedBox(height: 100),
              Center(
                child: SizedBox(
                    width: Get.width / 2.5,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorPalette.titleColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          if (!controller.key.currentState!.validate()) {
                            print("No Input");
                          } else {
                            Get.toNamed(Routes.home);
                          }
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: ColorPalette.dashboardColor,
                              fontSize: 19,
                              fontWeight: FontWeight.w800),
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildWelcomeText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Center(
        child: Text(
          "Welcome",
          style: TextStyle(
              color: ColorPalette.titleColor,
              fontWeight: FontWeight.w700,
              fontSize: 35),
        ),
      ),
    );
  }

  Padding _buildEmailText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Text(
        "Email",
        style: TextStyle(
            color: ColorPalette.titleColor,
            fontWeight: FontWeight.w700,
            fontSize: 15),
      ),
    );
  }

  Padding _buildPasswordText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Text(
        "Password",
        style: TextStyle(
            color: ColorPalette.titleColor,
            fontWeight: FontWeight.w700,
            fontSize: 15),
      ),
    );
  }

  Padding _buildEmailField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: TextFormField(
        controller: controller.emailController,
        onChanged: (text) {
          controller.emailLength.value = text.length;
        },
        validator: (value) {
          if (value!.isEmpty) {
            controller.isEmailEmpty.value = true;
            return "Please enter your email";
          } else {
            controller.isEmailEmpty.value = false;
          }
          return null;
        },
        textInputAction: TextInputAction.next,
        style: TextStyle(color: ColorPalette.titleColor),
        decoration: InputDecoration(
            counterStyle: TextStyle(color: ColorPalette.titleColor),
            fillColor: ColorPalette.fieldColor,
            filled: true,
            hintText: "Enter your email",
            hintStyle: TextStyle(color: ColorPalette.titleColor),
            labelStyle: TextStyle(color: ColorPalette.titleColor),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            errorBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            focusedErrorBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      ),
    );
  }

  Padding _buildPasswordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: TextFormField(
        controller: controller.passwordController,
        onChanged: (text) {
          controller.passwordLength.value = text.length;
        },
        validator: (value) {
          if (value!.isEmpty) {
            controller.isPasswordEmpty.value = true;
            return "Please enter your password";
          } else {
            controller.isPasswordEmpty.value = false;
          }
          return null;
        },
        obscureText: controller.obscureText.value,
        style: TextStyle(color: ColorPalette.titleColor),
        decoration: InputDecoration(
            counterStyle: TextStyle(color: ColorPalette.titleColor),
            fillColor: ColorPalette.fieldColor,
            filled: true,
            hintText: "Enter your email",
            hintStyle: TextStyle(color: ColorPalette.titleColor),
            labelStyle: TextStyle(color: ColorPalette.titleColor),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            errorBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            focusedErrorBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
        automaticallyImplyLeading: false,
        title: GestureDetector(
            onTap: () {
              controller.getBack();
            },
            child: Image.asset(Assets.back)));
  }
}
