import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/features/dashboard/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
  }
}
