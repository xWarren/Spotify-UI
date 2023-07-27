import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/core/resources/assets.dart';
import 'package:spotify_clone_ui/app/core/resources/colors.dart';
import 'package:spotify_clone_ui/app/features/home/home.dart';
import 'package:spotify_clone_ui/app/features/library/library.dart';
import 'package:spotify_clone_ui/app/features/navigationbar/navigation_controller.dart';
import 'package:spotify_clone_ui/app/features/search/search.dart';

class NavigationBarScreen extends GetWidget<NavigationBarController> {
  const NavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List nav = [
      HomeScreen(
        scrollController: controller.scrollController,
      ),
      const SearchScreen(),
      const LibraryScreen(),
    ];
    return Obx(
      () => Scaffold(
        body: nav[controller.currentIndex.value],
        bottomNavigationBar: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: controller.isVisible.value ? kBottomNavigationBarHeight : 0.0,
          child: _buildBottomNavigation(),
        ),
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigation() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorPalette.dashboardColor,
      onTap: controller.onTap,
      currentIndex: controller.currentIndex.value,
      selectedItemColor: ColorPalette.titleColor,
      unselectedItemColor: Colors.grey.withOpacity(0.5),
      showUnselectedLabels: false,
      showSelectedLabels: true,
      elevation: 0,
      items: [
        _buildHomeNavigation(),
        _buildSearchBottomNavigation(),
        _buildMyLibraryBottomNavigation(),
      ],
    );
  }

  BottomNavigationBarItem _buildHomeNavigation() {
    return BottomNavigationBarItem(
        icon: Image.asset(Assets.home,
            color: controller.currentIndex.value == 0
                ? null
                : Colors.grey.withOpacity(0.5)),
        label: "Home");
  }

  BottomNavigationBarItem _buildSearchBottomNavigation() {
    return BottomNavigationBarItem(
        icon: Image.asset(Assets.search,
            color: controller.currentIndex.value == 1
                ? ColorPalette.titleColor
                : Colors.grey.withOpacity(0.5)),
        label: "Search");
  }

  BottomNavigationBarItem _buildMyLibraryBottomNavigation() {
    return BottomNavigationBarItem(
        icon: Image.asset(Assets.library,
            color: controller.currentIndex.value == 2
                ? ColorPalette.titleColor
                : Colors.grey.withOpacity(0.5)),
        label: "My Library");
  }
}
