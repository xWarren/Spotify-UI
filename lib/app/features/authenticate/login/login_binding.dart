import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/features/authenticate/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
