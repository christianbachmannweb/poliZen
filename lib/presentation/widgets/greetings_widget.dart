import 'package:flutter/material.dart';
import 'package:polizen_app/core/theme/typography.dart';

class GreetingsWidget extends StatelessWidget {
  const GreetingsWidget({super.key});
  String greetingText() {
    final int hour = DateTime.now().hour;

    if (hour >= 5 && hour < 11) {
      return 'Guten Morgen ☀️';
    } else if (hour >= 11 && hour < 18) {
      return 'Guten Tag 👋🏻';
    } else if (hour >= 18 && hour < 23) {
      return 'Guten Abend 🌆';
    } else {
      return 'Sleep well 😴';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(greetingText(), style: AppFonts.h2);
  }
}
