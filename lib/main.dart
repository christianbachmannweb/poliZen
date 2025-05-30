import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    TextWidget(
                      'Guten Morgen',
                      fontsize: FontSizes.large,
                      weight: FontWeight.w700,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.withAlpha(50),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: TextWidget('0'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
