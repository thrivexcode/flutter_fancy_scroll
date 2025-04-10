import 'package:flutter/material.dart';
import 'package:flutter_fancy_scroll/core/assets/fonts.gen.dart';
import 'package:flutter_fancy_scroll/core/constants/colors.dart';
import 'package:flutter_fancy_scroll/core/extensions/spacing_ext.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final FormFieldValidator<String>? validator;
  const SearchField({
    super.key,
    required this.controller,
    this.hintText = "Find your destination...",
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        height: 32.h(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: mediumGray, width: 1),
          color: softWhite,
        ),
        child: TextFormField(
          controller: controller,
          validator: validator,
          style: TextStyle(
            fontSize: 16.sp(context),
            fontFamily: FontFamily.inter,
            fontWeight: FontWeight.w300,
            color: darkGray,
            height: 1.2,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
            prefixIcon: Icon(
              Icons.search,
              size: 16,
              color: mediumGray,
            ),
            prefixIconConstraints: BoxConstraints(
              minWidth: 28,
              minHeight: 28,
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
    );
  }
}
