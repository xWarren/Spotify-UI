import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/features/library/library_controller.dart';

class LibraryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LibraryController());
  }
}
