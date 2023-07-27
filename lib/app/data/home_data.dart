import 'package:spotify_clone_ui/app/core/resources/assets.dart';

class HomeData {
  final String recentImage;
  final String recentName;
  const HomeData({required this.recentImage, required this.recentName});
}

List<HomeData> homedata = [
  HomeData(recentImage: Assets.recent, recentName: "1(Remastered)"),
  HomeData(recentImage: Assets.postmalone, recentName: "Post Malone"),
  HomeData(recentImage: Assets.bieber, recentName: "Justin Bieber"),
  HomeData(recentImage: Assets.ariana, recentName: "Ariana Grande"),
  HomeData(recentImage: Assets.dualipa, recentName: "Dua Lipa"),
  HomeData(recentImage: Assets.theweeknd, recentName: "The Weekend"),
];

class ReviewData {
  final String reviewImage;
  final String reviewName;

  const ReviewData({required this.reviewImage, required this.reviewName});
}

List<ReviewData> review = [
  ReviewData(reviewImage: Assets.topsongs1, reviewName: "Your Top Songs 2021"),
  ReviewData(
      reviewImage: Assets.topsongs2, reviewName: "Your Artists Revealed"),
];

class EditorsPickData {
  final String editorsImage;
  final String editorsName;

  const EditorsPickData(
      {required this.editorsImage, required this.editorsName});
}

List<EditorsPickData> editors = [
  EditorsPickData(
      editorsImage: Assets.editors1,
      editorsName: "Ed Sheeran, Big Sean, \nJuice WRLD, Post Malone"),
  EditorsPickData(
      editorsImage: Assets.editors2,
      editorsName: "Mitski, Tame Impala, \nGlass Animals, Charli XCX"),
  EditorsPickData(
      editorsImage: Assets.editors3,
      editorsName: "Ed Sheeran, Big Sean, \nJuice WRLD, Post Malone")
];
