import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:polizen_app/core/theme/typography.dart';
import 'package:polizen_app/data/models/pre_meditation_model.dart';

@RoutePage()
class PreMeditationPage extends StatelessWidget {
  final PreMeditation preMeditation = PreMeditation(
    titel: 'Das ist die Überschrift',
    meditationInfo: 'Hier ist der Body. der kann durchaus länger sein',
  );

  PreMeditationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/imageakzeptanz.png',
              fit: BoxFit.cover,
            ),
          ),
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black12.withAlpha(190),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 1, color: Colors.white24),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(preMeditation.titel, style: AppFonts.h2),
                const SizedBox(height: 16),
                Text(preMeditation.meditationInfo, style: AppFonts.body),
                const SizedBox(height: 32),
                Container(
                  width: size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Dauer',
                      style: AppFonts.body.copyWith(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.play_arrow, color: Colors.black),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 25),
              child: InkWell(
                onTap: () {
                  context.router.back();
                },

                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha(90),
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
