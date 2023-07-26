import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/features/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
