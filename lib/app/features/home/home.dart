import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_clone_ui/app/core/resources/assets.dart';
import 'package:spotify_clone_ui/app/core/resources/colors.dart';
import 'package:spotify_clone_ui/app/data/home_data.dart';

class HomeScreen extends StatefulWidget {
  final ScrollController scrollController;
  const HomeScreen({required this.scrollController, super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        controller: widget.scrollController,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 50),
          _buildRecentlyPlayedBar(),
          _buildRecentlyPlayed(),
          const SizedBox(height: 10),
          _buildWrapped(),
          const SizedBox(height: 10),
          _buildReview(),
          const SizedBox(height: 10),
          _buildEditorsPickText(),
          const SizedBox(height: 10),
          _buildEditorsPick()
        ]),
      ),
    );
  }

  Container _buildEditorsPick() {
    return Container(
      height: Get.height / 4.1,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListView.builder(
        itemCount: editors.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(editors[index].editorsImage),
                const SizedBox(height: 10),
                Text(
                  editors[index].editorsName,
                  style: TextStyle(
                      color: ColorPalette.fieldColor,
                      fontSize: 11.5,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Padding _buildEditorsPickText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        "Editor’s picks",
        style: TextStyle(
            color: ColorPalette.titleColor,
            fontSize: 24,
            fontWeight: FontWeight.w500),
      ),
    );
  }

  Padding _buildRecentlyPlayedBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Recently played",
            style: TextStyle(
                color: ColorPalette.titleColor,
                fontSize: 19,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    Get.snackbar("Message:", "No screen for Notification yet.",
                        backgroundColor: ColorPalette.titleColor);
                  },
                  child: Image.asset(Assets.notification)),
              const SizedBox(width: 15),
              GestureDetector(
                  onTap: () {
                    Get.snackbar("Message:", "No screen for Notification yet.",
                        backgroundColor: ColorPalette.titleColor);
                  },
                  child: Image.asset(Assets.lock)),
              const SizedBox(width: 15),
              GestureDetector(
                  onTap: () {
                    Get.snackbar("Message:", "No screen for Settings yet.",
                        backgroundColor: ColorPalette.titleColor);
                  },
                  child: Image.asset(Assets.settings))
            ],
          ),
        ],
      ),
    );
  }

  Padding _buildWrapped() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Image.asset(Assets.review),
          const SizedBox(width: 10),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "#SPOTIFYWRAPPED",
                style: TextStyle(
                  color: ColorPalette.registerButton,
                  fontSize: 10,
                ),
              ),
              Text(
                "Your 2021 in review",
                style: TextStyle(
                    color: ColorPalette.titleColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              )
            ],
          ))
        ],
      ),
    );
  }

  Container _buildReview() {
    return Container(
      height: Get.height / 4,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListView.builder(
        itemCount: review.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Image.asset(review[index].reviewImage),
                const SizedBox(height: 10),
                Text(
                  review[index].reviewName,
                  style: TextStyle(
                      color: ColorPalette.titleColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Container _buildRecentlyPlayed() {
    return Container(
      height: Get.height / 4.5,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListView.builder(
        itemCount: homedata.length,
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                  Image.asset(
                    homedata[index].recentImage,
                    height: 150,
                    width: 100,
                  ),
                  Text(
                    homedata[index].recentName,
                    style: TextStyle(
                        color: ColorPalette.titleColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
