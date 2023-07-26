import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/core/resources/colors.dart';
import 'package:spotify_clone_ui/app/core/routes/pages.dart';
import 'package:spotify_clone_ui/app/core/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: ColorPalette.dashboardColor,
            systemOverlayStyle: SystemUiOverlayStyle.light),
        fontFamily: "Poppins",
        scaffoldBackgroundColor: ColorPalette.dashboardColor,
      ),
      getPages: Pages.pages,
      transitionDuration: const Duration(milliseconds: 500),
      initialRoute: Routes.splash,
    );
  }
}
