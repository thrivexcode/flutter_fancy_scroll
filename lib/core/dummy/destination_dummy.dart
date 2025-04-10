// lib/core/dummy/destination_dummy.dart
import 'package:flutter/material.dart';
import 'package:flutter_fancy_scroll/core/assets/assets.gen.dart';
import 'package:flutter_fancy_scroll/core/models/destination_item.dart';

final List<DestinationItem> destinationItems = [
  DestinationItem(
    title: "Bali, Indonesia",
    price: "\$750",
    imagePath: Assets.images.image1.path,
    rating: 4.9,
    reviews: 320,
    isFavorite: true,
    onFavoriteToggle: () {
      debugPrint("Bali favorite toggled!");
    },
    onMoreOptions: () {
      debugPrint("More options for Bali clicked!");
    },
  ),
  DestinationItem(
    title: "Kyoto, Japan",
    price: "\$1,200",
    imagePath: Assets.images.image2.path,
    rating: 4.8,
    reviews: 290,
    isFavorite: false,
    onFavoriteToggle: () {
      debugPrint("Kyoto favorite toggled!");
    },
    onMoreOptions: () {
      debugPrint("More options for Kyoto clicked!");
    },
  ),
  DestinationItem(
    title: "Santorini, Greece",
    price: "\$1,500",
    imagePath: Assets.images.image3.path,
    rating: 4.7,
    reviews: 400,
    isFavorite: true,
    onFavoriteToggle: () {
      debugPrint("Santorini favorite toggled!");
    },
    onMoreOptions: () {
      debugPrint("More options for Santorini clicked!");
    },
  ),
  DestinationItem(
    title: "Paris, France",
    price: "\$1,800",
    imagePath: Assets.images.image4.path,
    rating: 4.9,
    reviews: 500,
    isFavorite: true,
    onFavoriteToggle: () {
      debugPrint("Paris favorite toggled!");
    },
    onMoreOptions: () {
      debugPrint("More options for Paris clicked!");
    },
  ),
  DestinationItem(
    title: "Machu Picchu, Peru",
    price: "\$900",
    imagePath: Assets.images.image5.path,
    rating: 4.6,
    reviews: 275,
    isFavorite: false,
    onFavoriteToggle: () {
      debugPrint("Machu Picchu favorite toggled!");
    },
    onMoreOptions: () {
      debugPrint("More options for Machu Picchu clicked!");
    },
  ),
  DestinationItem(
    title: "Venice, Italy",
    price: "\$1,400",
    imagePath: Assets.images.image6.path,
    rating: 4.8,
    reviews: 350,
    isFavorite: true,
    onFavoriteToggle: () {
      debugPrint("Venice favorite toggled!");
    },
    onMoreOptions: () {
      debugPrint("More options for Venice clicked!");
    },
  ),
  DestinationItem(
    title: "Dubai, UAE",
    price: "\$2,000",
    imagePath: Assets.images.image7.path,
    rating: 4.7,
    reviews: 600,
    isFavorite: false,
    onFavoriteToggle: () {
      debugPrint("Dubai favorite toggled!");
    },
    onMoreOptions: () {
      debugPrint("More options for Dubai clicked!");
    },
  ),
];
