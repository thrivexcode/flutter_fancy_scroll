import 'package:flutter/material.dart';

extension SpacingExt on num {
  // ✅ Responsive Padding (Semua sisi)
  EdgeInsets p(BuildContext context) => EdgeInsets.all(_scaled(context));

  // ✅ Responsive Padding Horizontal & Vertical (Nilai Berbeda)
  EdgeInsets pHV(BuildContext context,
          {required double h, required double v}) =>
      EdgeInsets.symmetric(
        horizontal: h._scaled(context),
        vertical: v._scaled(context),
      );

  // ✅ Responsive Padding Custom (Setiap Sisi Bisa Berbeda)
  EdgeInsets pOnly(BuildContext context,
          {double l = 0, double t = 0, double r = 0, double b = 0}) =>
      EdgeInsets.only(
        left: l._scaled(context),
        top: t._scaled(context),
        right: r._scaled(context),
        bottom: b._scaled(context),
      );

  // ✅ Responsive Margin (Semua sisi)
  EdgeInsets m(BuildContext context) => EdgeInsets.all(_scaled(context));

  // ✅ Responsive Margin Horizontal & Vertical (Nilai Berbeda)
  EdgeInsets mHV(BuildContext context,
          {required double h, required double v}) =>
      EdgeInsets.symmetric(
        horizontal: h._scaled(context),
        vertical: v._scaled(context),
      );

  // ✅ Responsive Margin Custom (Setiap Sisi Bisa Berbeda)
  EdgeInsets mOnly(BuildContext context,
          {double l = 0, double t = 0, double r = 0, double b = 0}) =>
      EdgeInsets.only(
        left: l._scaled(context),
        top: t._scaled(context),
        right: r._scaled(context),
        bottom: b._scaled(context),
      );

  // ✅ Responsive Width & Height
  double w(BuildContext context) => _scaled(context);
  double h(BuildContext context) => _scaled(context);

  // ✅ Responsive Font Size
  double sp(BuildContext context) => _scaled(context);

  // ✅ Scaling function (Menggunakan Base Width 375)
  double _scaled(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return (this / 375) * width;
  }
}
