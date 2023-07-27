import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/features/navigationbar/navigation_controller.dart';

class NavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NavigationBarController());
  }
}
