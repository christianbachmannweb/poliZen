import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget(
    this.text, {
    super.key,
    this.fontsize = FontSizes.regular,
    this.weight = FontWeight.w300,
    this.textAlign,
  });
  final String text;
  final double fontsize;
  final FontWeight weight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Merchant',
        fontSize: fontsize,
        fontWeight: weight,
      ),
      textAlign: textAlign,
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
