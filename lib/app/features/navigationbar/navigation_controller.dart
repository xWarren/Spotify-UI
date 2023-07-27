import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class NavigationBarController extends GetxController {
  Rx<int> currentIndex = 0.obs;
  final scrollController = ScrollController();
  Rx<bool> isVisible = true.obs;

  void onTap(int index) {
    currentIndex.value = index;
  }

  void scrollState() {
    scrollController;
    scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    scrollController.removeListener(_scrollListener);
    scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      isVisible.value = false;
    }
    if (scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      isVisible.value = true;
    }
  }
}
