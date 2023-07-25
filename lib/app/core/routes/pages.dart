import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/core/routes/routes.dart';
import 'package:spotify_clone_ui/app/features/dashboard/dashboard.dart';
import 'package:spotify_clone_ui/app/features/dashboard/dashboard_binding.dart';

class Pages {
  static final pages = [
    GetPage(
      name: Routes.dashboard,
      page: () => const DashboardScreen(),
      binding: DashboardBinding(),
    )
  ];
}
