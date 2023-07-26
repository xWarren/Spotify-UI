import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var obscureText = true.obs;
  RxInt emailLength = 0.obs;
  RxInt passwordLength = 0.obs;
  RxBool isPasswordEmpty = true.obs;
  RxBool isEmailEmpty = true.obs;

  final key = GlobalKey<FormState>();

  void getBack() {
    emailController.clear();
    passwordController.clear();
    Get.back();
  }
}
