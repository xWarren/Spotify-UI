import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
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
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            systemOverlayStyle: SystemUiOverlayStyle.light),
        fontFamily: "Poppins",
        scaffoldBackgroundColor: Colors.white,
      ),
      getPages: Pages.pages,
      initialRoute: Routes.dashboard,
    );
  }
}
