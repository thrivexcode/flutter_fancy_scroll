import 'package:flutter/material.dart';
import 'package:flutter_fancy_scroll/core/assets/fonts.gen.dart';
import 'package:flutter_fancy_scroll/core/constants/colors.dart';
import 'package:flutter_fancy_scroll/core/extensions/spacing_ext.dart';

class CustomSliverSearch extends StatefulWidget {
  final TextEditingController controller;
  final double scrollOffset;
  const CustomSliverSearch({
    super.key,
    required this.controller,
    required this.scrollOffset,
  });

  @override
  State<CustomSliverSearch> createState() => _CustomSliverSearchState();
}

String? _validateSearch(String? value) {
  if (value == null || value.trim().isEmpty) {
    return 'Please enter a destination';
  }
  return null;
}

class _CustomSliverSearchState extends State<CustomSliverSearch> {
  @override
  Widget build(BuildContext context) {
    Color backgroundColor =
        widget.scrollOffset > 270 ? neutralColor : lightGray;
    return SliverAppBar(
      backgroundColor: lightGray,
      elevation: 0,
      pinned: true,
      bottom: const PreferredSize(
          preferredSize: Size.fromHeight(-10.0), child: SizedBox()),
      flexibleSpace: Container(
        color: backgroundColor,
        padding: EdgeInsets.only(left: 16, right: 16),
        alignment: Alignment.center,
        child: _buildSearchField(context),
      ),
    );
  }

  Widget _buildSearchField(BuildContext context) {
    return Form(
      child: Center(
        child: Container(
          height: 40.h(context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: softWhite,
            boxShadow: [
              BoxShadow(
                color: darkGray.withValues(alpha: 0.05),
                blurRadius: 12,
                spreadRadius: 2,
                offset: Offset(0, 4),
              )
            ],
          ),
          child: TextFormField(
            controller: widget.controller,
            validator: _validateSearch,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(
              fontSize: 16.sp(context),
              fontFamily: FontFamily.inter,
              fontWeight: FontWeight.w300,
              color: darkGray,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 11.5),
              prefixIcon: const Icon(
                Icons.search,
                size: 18,
                color: mediumGray,
              ),
              prefixIconConstraints: const BoxConstraints(
                minWidth: 36,
                minHeight: 36,
              ),
              hintText: "Find your destination...",
              hintStyle: TextStyle(
                fontSize: 16.sp(context),
                fontFamily: FontFamily.inter,
                color: mediumGray,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
