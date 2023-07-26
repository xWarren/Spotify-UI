import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/core/routes/routes.dart';
import 'package:spotify_clone_ui/app/features/authenticate/login/login.dart';
import 'package:spotify_clone_ui/app/features/authenticate/login/login_binding.dart';
import 'package:spotify_clone_ui/app/features/authenticate/register/register.dart';
import 'package:spotify_clone_ui/app/features/authenticate/register/register_binding.dart';
import 'package:spotify_clone_ui/app/features/dashboard/dashboard.dart';
import 'package:spotify_clone_ui/app/features/dashboard/dashboard_binding.dart';
import 'package:spotify_clone_ui/app/features/home/home.dart';
import 'package:spotify_clone_ui/app/features/home/home_binding.dart';
import 'package:spotify_clone_ui/app/features/splash_screen/splash.dart';
import 'package:spotify_clone_ui/app/features/splash_screen/splash_binding.dart';

class Pages {
  static final pages = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.dashboard,
      page: () => const DashboardScreen(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: Routes.register,
      page: () => const RegisterScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    )
  ];
}
