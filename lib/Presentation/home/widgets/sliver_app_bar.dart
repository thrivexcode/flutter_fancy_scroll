import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_fancy_scroll/core/assets/assets.gen.dart';
import 'package:flutter_fancy_scroll/core/assets/fonts.gen.dart';
import 'package:flutter_fancy_scroll/core/constants/colors.dart';
import 'package:flutter_fancy_scroll/core/extensions/positioned_ext.dart';
import 'package:flutter_fancy_scroll/core/extensions/spacing_ext.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: softWhite,
      elevation: 0,
      pinned: false,
      centerTitle: false,
      stretch: true,
      snap: true,
      floating: true,
      expandedHeight: 240.0,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: [StretchMode.zoomBackground],
        background: Stack(
          fit: StackFit.expand,
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
              child: Image.asset(
                Assets.images.banner.path,
                fit: BoxFit.cover,
              ),
            ),
            // backdrop effect
            Container(
              color: darkGray.withValues(alpha: 0.3),
            ),
            _buildBackButton(context).positioned(top: 16, left: 16),
            _buildHighlightText(context).positioned(bottom: 42, left: 16),
            _buildLogoDisplay(context).positioned(bottom: 16, right: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Container(
      padding: 6.p(context),
      decoration: BoxDecoration(
        color: mediumGray.withValues(alpha: 0.3),
        shape: BoxShape.circle,
      ),
      child: InkWell(
        onTap: () => Navigator.pop(context),
        child: PhosphorIcon(
          PhosphorIcons.arrowLeft(),
          color: softWhite,
          size: 16,
        ),
      ),
    );
  }

  Widget _buildHighlightText(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Text(
        "Explore the world, one journey at a time.",
        style: TextStyle(
          color: softWhite,
          fontFamily: FontFamily.inter,
          fontSize: 30.sp(context),
          fontWeight: FontWeight.bold,
          letterSpacing: 0.6,
          height: 1.2,
        ),
        textAlign: TextAlign.left,
        softWrap: true,
        overflow: TextOverflow.visible,
      ),
    );
  }

  Widget _buildLogoDisplay(BuildContext context) {
    return Opacity(
      opacity: 0.2,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Assets.images.logo.image(
          width: 35.w(context),
        ),
      ),
    );
  }
}
