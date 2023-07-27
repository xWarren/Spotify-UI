import 'package:spotify_clone_ui/app/core/resources/assets.dart';

class ArtistsData {
  final String artistsImage;
  final String artistsName;
  bool selected;
  ArtistsData(
      {required this.artistsImage,
      required this.artistsName,
      this.selected = false});
}

List<ArtistsData> artists = [
  ArtistsData(
      artistsImage: Assets.ariana,
      artistsName: "Ariana Grande",
      selected: false),
  ArtistsData(artistsImage: Assets.bts, artistsName: "BTS", selected: false),
  ArtistsData(
      artistsImage: Assets.drake, artistsName: "Drake", selected: false),
  ArtistsData(
      artistsImage: Assets.dualipa, artistsName: "Dua Lipa", selected: false),
  ArtistsData(
      artistsImage: Assets.edsheeran,
      artistsName: "Ed Sheeran",
      selected: false),
  ArtistsData(
      artistsImage: Assets.bieber,
      artistsName: "Justin Bieber",
      selected: false),
  ArtistsData(
      artistsImage: Assets.onedirection,
      artistsName: "One Direction",
      selected: false),
  ArtistsData(
      artistsImage: Assets.postmalone,
      artistsName: "Post Malone",
      selected: false),
  ArtistsData(
      artistsImage: Assets.theweeknd,
      artistsName: "The Weeknd",
      selected: false),
  ArtistsData(
      artistsImage: Assets.ariana,
      artistsName: "Ariana Grande",
      selected: false),
  ArtistsData(artistsImage: Assets.bts, artistsName: "BTS", selected: false),
  ArtistsData(
      artistsImage: Assets.drake, artistsName: "Drake", selected: false),
  ArtistsData(
      artistsImage: Assets.dualipa, artistsName: "Dua Lipa", selected: false),
  ArtistsData(
      artistsImage: Assets.edsheeran,
      artistsName: "Ed Sheeran",
      selected: false),
  ArtistsData(
      artistsImage: Assets.bieber,
      artistsName: "Justin Bieber",
      selected: false),
  ArtistsData(
      artistsImage: Assets.onedirection,
      artistsName: "One Direction",
      selected: false),
  ArtistsData(
      artistsImage: Assets.postmalone,
      artistsName: "Post Malone",
      selected: false),
  ArtistsData(
      artistsImage: Assets.theweeknd,
      artistsName: "The Weeknd",
      selected: false),
];
