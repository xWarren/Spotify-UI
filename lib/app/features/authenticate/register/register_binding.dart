import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/features/authenticate/register/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RegisterController());
  }
}
