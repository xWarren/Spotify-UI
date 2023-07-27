import 'package:spotify_clone_ui/app/core/resources/assets.dart';

class GenreData {
  final String genreImage;
  final String genreName;

  const GenreData({required this.genreImage, required this.genreName});
}

List<GenreData> genre = [
  GenreData(genreImage: Assets.pop, genreName: "Pop"),
  GenreData(genreImage: Assets.indie, genreName: "Indie"),
];

class PopularPodcastsData {
  final String popularPodcastsImage;
  final String popularPodcastsName;

  const PopularPodcastsData(
      {required this.popularPodcastsImage, required this.popularPodcastsName});
}

List<PopularPodcastsData> popularPodcasts = [
  PopularPodcastsData(
      popularPodcastsImage: Assets.newsandpolitics,
      popularPodcastsName: "News & \nPolitics"),
  PopularPodcastsData(
      popularPodcastsImage: Assets.comedy, popularPodcastsName: "Comedy"),
];

class BrowseAllData {
  final String browseImage;
  final String browseName;

  const BrowseAllData({required this.browseImage, required this.browseName});
}

List<BrowseAllData> browseall = [
  BrowseAllData(browseImage: Assets.wrapped, browseName: "2021 Wrapped"),
  BrowseAllData(browseImage: Assets.podcasts, browseName: "Podcasts"),
  BrowseAllData(browseImage: Assets.madeforyou, browseName: "Made for you"),
  BrowseAllData(browseImage: Assets.charts, browseName: "Charts"),
];
