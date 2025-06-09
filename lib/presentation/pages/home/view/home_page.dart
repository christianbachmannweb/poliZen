import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:polizen_app/data/models/blog_model.dart';
import 'package:polizen_app/presentation/pages/home/widgets/blogteaser_widget.dart';
import 'package:polizen_app/presentation/pages/home/widgets/homepage_btn_row_widget.dart';
import 'package:polizen_app/presentation/widgets/navbar_widget.dart';
import 'package:polizen_app/presentation/widgets/text_widget.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Blog> blogs = [
    Blog(
      createdAt: DateTime.now(),
      titel: 'Test Blog',
      like: true,
      image:
          'https://cdn.prod.website-files.com/66eaf4af01aed54e9fb3fcd3/6841baf15561c7511bab2507_blogplaceholder.png',
      richText: 'richText',
      id: 1,
      quelle: [],
      excerp: 'Das ist eine kurze Beschreibung des Blogs',
    ),
    Blog(
      createdAt: DateTime.now(),
      titel: 'Test Blog',

      like: true,
      image:
          'https://cdn.prod.website-files.com/66eaf4af01aed54e9fb3fcd3/6841baf15561c7511bab2507_blogplaceholder.png',
      richText: 'richText',
      id: 1,
      quelle: [],
      excerp: 'Das ist eine kurze Beschreibung des Blogs',
    ),
    Blog(
      createdAt: DateTime.now(),
      titel: 'Test Blog',
      like: true,
      image:
          'https://cdn.prod.website-files.com/66eaf4af01aed54e9fb3fcd3/6841baf15561c7511bab2507_blogplaceholder.png',
      richText: 'richText',
      id: 1,
      quelle: [],
      excerp: 'Das ist eine kurze Beschreibung des Blogs',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            NavBarWidget(),
            const SizedBox(height: 32),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  HomePageBtnRowWidget(
                    btn1: 'Einführung',
                    btn2: 'Akzeptanz',
                    icon1: Icons.start,
                    icon2: Icons.safety_check,
                  ),
                  HomePageBtnRowWidget(
                    btn1: 'Orientierung',
                    btn2: 'Stärken',
                    icon1: Icons.center_focus_strong,
                    icon2: Icons.man_2,
                  ),
                  HomePageBtnRowWidget(
                    btn1: 'Antizipieren',
                    btn2: 'Action',
                    icon1: Icons.psychology_alt,
                    icon2: Icons.rocket,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              child: HeadingWidget('Aktuelles', fontsize: FontSizes.medium),
            ),
            SizedBox(
              height: 320,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (final blog in blogs) BlogTeaserWidget(blog: blog),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue[200],
        backgroundColor: Colors.grey.withAlpha(50),
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Icon(Icons.settings),
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: 0,
      ),
    );
  }
}
