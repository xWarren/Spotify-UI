import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/core/resources/colors.dart';
import 'package:spotify_clone_ui/app/core/routes/routes.dart';

enum SingingCharacter { lafayette, jefferson }

class RegisterController extends GetxController {
  SingingCharacter? character = SingingCharacter.lafayette;
  Timer? timer;
  int start = 3;
  RxInt tap = 0.obs;
  RxString terms = "".obs;
  RxString selecttermsedItem = "".obs;
  final pageController = PageController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  RxBool isEmailFilled = false.obs;
  RxBool newsTile = false.obs;
  RxBool registrationTile = false.obs;
  RxInt emailLength = 0.obs;
  RxInt passwordLength = 0.obs;
  RxInt nameLength = 0.obs;

  void getBack() {
    emailController.clear();
    passwordController.clear();
    nameController.clear();
    Get.back();
  }

  void redirectScreen(String val) {
    selecttermsedItem.value = val;
    Future.delayed(300.milliseconds, () {
      pageController.nextPage(
          duration: 300.milliseconds, curve: Curves.slowMiddle);
    });
  }

  void registered() {
    Get.snackbar("Message:", "Account Successfully Registered!",
        backgroundColor: ColorPalette.titleColor);
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start == 0) {
          timer.cancel();

          Get.offNamedUntil(Routes.dashboard, (route) => false);
        } else {
          start--;
        }
      },
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}
