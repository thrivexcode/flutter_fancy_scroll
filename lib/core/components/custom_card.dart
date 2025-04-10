import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_fancy_scroll/core/assets/fonts.gen.dart';
import 'package:flutter_fancy_scroll/core/constants/colors.dart';
import 'package:flutter_fancy_scroll/core/extensions/positioned_ext.dart';
import 'package:flutter_fancy_scroll/core/models/destination_item.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CustomCard extends StatelessWidget {
  final DestinationItem destination;

  const CustomCard({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: softWhite,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 12,
              spreadRadius: 2,
              offset: const Offset(0, 4),
            )
          ],
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _BuildImage(
              imagePath: destination.imagePath,
              isFavorite: destination.isFavorite,
              onFavoriteToggle: destination.onFavoriteToggle,
            ),
            const SizedBox(height: 10),
            _BuildDetails(
              title: destination.title,
              price: destination.price,
              rating: destination.rating,
              reviews: destination.reviews,
              onMoreOptions: destination.onMoreOptions,
            ),
          ],
        ),
      ),
    );
  }
}

class _BuildImage extends StatelessWidget {
  final String imagePath;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;

  const _BuildImage({
    required this.imagePath,
    required this.isFavorite,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: softWhite,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          children: [
            Positioned.fill(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 0.2, sigmaY: 0.2),
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
            ),
            Positioned.fill(
              child: Container(color: darkGray.withValues(alpha: 0.2)),
            ),
            GestureDetector(
              onTap: onFavoriteToggle,
              child: _FavoriteButton(isFavorite: isFavorite),
            ).positioned(top: 12, right: 12),
          ],
        ),
      ),
    );
  }
}

class _FavoriteButton extends StatelessWidget {
  final bool isFavorite;

  const _FavoriteButton({required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: isFavorite ? softWhite : softWhite.withValues(alpha: 0.3),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: darkGray.withValues(alpha: 0.1),
            blurRadius: 4,
            spreadRadius: 1,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: PhosphorIcon(
        isFavorite ? PhosphorIconsFill.heart : PhosphorIcons.heart(),
        color: isFavorite ? Colors.red.withValues(alpha: 0.9) : softWhite,
        size: 16,
      ),
    );
  }
}

class _BuildDetails extends StatelessWidget {
  final String title;
  final String price;
  final double rating;
  final int reviews;
  final VoidCallback onMoreOptions;

  const _BuildDetails({
    required this.title,
    required this.price,
    required this.rating,
    required this.reviews,
    required this.onMoreOptions,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: FontFamily.inter,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 0.4,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontFamily: FontFamily.inter,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    PhosphorIcon(PhosphorIcons.star(),
                        color: darkGray, size: 12),
                    const SizedBox(width: 4),
                    Text(
                      rating.toString(),
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: darkGray),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      "$reviews reviews",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[400]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: onMoreOptions,
            borderRadius: BorderRadius.circular(12),
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration:
                  BoxDecoration(color: darkGray, shape: BoxShape.circle),
              child: PhosphorIcon(PhosphorIcons.arrowRight(),
                  size: 20, color: softWhite),
            ),
          ),
        ],
      ),
    );
  }
}
