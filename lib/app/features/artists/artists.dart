import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/core/resources/colors.dart';
import 'package:spotify_clone_ui/app/core/routes/routes.dart';
import 'package:spotify_clone_ui/app/data/artists_data.dart';
import 'package:spotify_clone_ui/app/features/artists/artists_controller.dart';

import '../../core/resources/assets.dart';

class ArtistsScreen extends GetView<ArtistsController> {
  const ArtistsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          appBar: _buildAppBar(),
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 50, crossAxisSpacing: 10),
            itemCount: artists.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  controller.selected(index);
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Image.asset(artists[index].artistsImage)),
                    const SizedBox(height: 10),
                    Text(
                      artists[index].artistsName,
                      style: TextStyle(
                          color: controller.selectedArtists.value ||
                                  controller.selectedCount < 3
                              ? ColorPalette.titleColor
                              : Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              );
            },
          ),
          bottomSheet: controller.selectedCount < 3
              ? null
              : Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: Get.width / 2.5,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorPalette.titleColor,
                            ),
                            onPressed: () {
                              Get.toNamed(Routes.home);
                            },
                            child: Text(
                              "Done",
                              style:
                                  TextStyle(color: ColorPalette.dashboardColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                )),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Center(
        child: Text(
          "Choose 3 or more artists you like.",
          style: TextStyle(fontSize: 15),
        ),
      ),
      leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Image.asset(Assets.back)),
    );
  }
}
