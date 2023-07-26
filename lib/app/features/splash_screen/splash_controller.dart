import 'dart:async';

import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/core/routes/routes.dart';

class SplashController extends GetxController {
  Timer? timer;
  int start = 5;
  @override
  void onReady() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start == 0) {
          timer.cancel();
          Get.toNamed(Routes.dashboard);
        } else {
          start--;
        }
      },
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}
