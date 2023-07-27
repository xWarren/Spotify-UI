import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/core/resources/assets.dart';
import 'package:spotify_clone_ui/app/core/resources/colors.dart';
import 'package:spotify_clone_ui/app/data/search_data.dart';

class SearchScreen extends GetView<SearchController> {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: CustomScrollView(
          slivers: [
            _buildSliverAppBar(),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Text(
                                "Your top genres",
                                style: TextStyle(
                                    color: ColorPalette.titleColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            _buildTopGenres(),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Text(
                                "Popular podcast categories",
                                style: TextStyle(
                                    color: ColorPalette.titleColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            _buildPopularPodcasts(),
                            _buildBrowseAllText(),
                            SizedBox(
                              height: Get.height / 7,
                              child: GridView.builder(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 10),
                                itemCount: browseall.length,
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                itemBuilder: (context, index) {
                                  return Stack(
                                    fit: StackFit.loose,
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Image.asset(browseall[index].browseImage),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 10),
                                        child: Text(
                                          browseall[index].browseName,
                                          maxLines: 2,
                                          style: TextStyle(
                                              color: ColorPalette.titleColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                    childCount: 1))
          ],
        ));
  }

  Padding _buildBrowseAllText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Text(
        "Browse all",
        style: TextStyle(
            color: ColorPalette.titleColor,
            fontSize: 16,
            fontWeight: FontWeight.w500),
      ),
    );
  }

  SizedBox _buildPopularPodcasts() {
    return SizedBox(
      height: Get.height / 6,
      child: ListView.builder(
        itemCount: popularPodcasts.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Stack(
              fit: StackFit.loose,
              alignment: Alignment.topCenter,
              children: [
                Image.asset(popularPodcasts[index].popularPodcastsImage),
                Padding(
                  padding: const EdgeInsets.only(right: 100, top: 10),
                  child: Text(
                    popularPodcasts[index].popularPodcastsName,
                    maxLines: 2,
                    style: TextStyle(
                        color: ColorPalette.titleColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  SizedBox _buildTopGenres() {
    return SizedBox(
      height: Get.height / 6,
      child: ListView.builder(
        itemCount: genre.length,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Stack(
              fit: StackFit.loose,
              alignment: Alignment.topCenter,
              children: [
                Image.asset(genre[index].genreImage),
                Padding(
                  padding: const EdgeInsets.only(right: 120, top: 10),
                  child: Text(
                    genre[index].genreName,
                    style: TextStyle(
                        color: ColorPalette.titleColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  SliverAppBar _buildSliverAppBar() {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: Get.height / 7.5,
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorPalette.titleColor,
                ),
                onPressed: () {},
                child: Row(children: [
                  Image.asset(Assets.search),
                  const SizedBox(width: 15),
                  Text(
                    "Artists, songs, or podcasts",
                    style: TextStyle(
                        color: ColorPalette.dashboardColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  )
                ]),
              ),
            )
          ])),
      pinned: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Search",
              style: TextStyle(
                  color: ColorPalette.titleColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
          GestureDetector(
              onTap: () {
                Get.snackbar("Message:", "No screen for Camera yet.",
                    backgroundColor: ColorPalette.titleColor);
              },
              child: Image.asset(Assets.camera))
        ],
      ),
    );
  }
}
