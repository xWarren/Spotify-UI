import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/features/splash_screen/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
