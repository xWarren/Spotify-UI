import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/features/artists/artists_controller.dart';

class ArtistsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ArtistsController());
  }
}
