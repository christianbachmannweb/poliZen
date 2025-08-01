import 'package:flutter/material.dart';
import 'package:polizen_app/core/routes/app_router.dart';
import 'package:polizen_app/core/theme/constants/colors.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: mainBgColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        fontFamily: 'Mulish',
      ),
    );
  }
}
