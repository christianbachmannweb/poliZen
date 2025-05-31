import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
    this.text, {
    super.key,
    this.fontsize = FontSizes.regular,
    this.weight = FontWeight.w300,
  });
  final String text;
  final double fontsize;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.merriweather(fontSize: fontsize, fontWeight: weight),
    );
  }
}

class FontSizes {
  static const double regular = 16;
  static const double small = 14;
  static const double medium = 20;
  static const double large = 24;
  static const double xlarge = 32;
}
