import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/data/artists_data.dart';

class ArtistsController extends GetxController {
  RxBool selectedArtists = false.obs;
  List<ArtistsData> artists = [];
  RxInt selectedCount = 0.obs;

  void selected(index) {
    if (selectedArtists.value) {
      // If the artist is already selected, deselect it
      selectedCount--;
      print(selectedCount);
    } else {
      // If the artist is not selected, check if the limit is reached
      if (selectedCount < 3) {
        selectedCount++;
        print(selectedCount);
      } else {
        // The user can't select more than three artists, so return early
        return;
      }
    }
  }
}
