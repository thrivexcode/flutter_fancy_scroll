import 'package:flutter/material.dart';

class DestinationItem {
  final String title;
  final String price;
  final String imagePath;
  final double rating;
  final int reviews;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;
  final VoidCallback onMoreOptions;

  DestinationItem({
    required this.title,
    required this.price,
    required this.imagePath,
    required this.rating,
    required this.reviews,
    required this.isFavorite,
    required this.onFavoriteToggle,
    required this.onMoreOptions,
  });
}
