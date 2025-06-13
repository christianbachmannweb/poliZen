import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:like_button/like_button.dart';
import 'package:polizen_app/core/theme/typography.dart';
import 'package:polizen_app/data/models/blog_model.dart';

@RoutePage()
class DetailPage extends StatelessWidget {
  DetailPage({super.key});
  final Blog blog = Blog(
    createdAt: DateTime.now(),
    titel: 'Test Blog',
    like: true,
    image:
        'https://cdn.prod.website-files.com/66eaf4af01aed54e9fb3fcd3/6841baf15561c7511bab2507_blogplaceholder.png',
    richText: 'richText',
    id: 1,
    quelle: [],
    excerp: 'Das ist eine kurze Beschreibung des Blogs',
  );
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: blog.image,
              width: size.width,
              height: size.height * 0.4,
              fit: BoxFit.cover,
            ),
            Container(
              constraints: BoxConstraints(minHeight: size.height),
              margin: EdgeInsets.only(top: 300),

              width: size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff183E4C), Colors.black],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(50),
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(0, -10),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                  left: 16,
                  right: 16,
                  bottom: 32,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha(20),
                            borderRadius: BorderRadius.circular(200),
                            border: Border.all(
                              width: 1,
                              color: Colors.white.withAlpha(30),
                            ),
                          ),

                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/instagram-white.png',
                                    height: 24,
                                    width: 24,
                                    color: Colors.blue,
                                  ),
                                  const SizedBox(width: 8),
                                  Image.asset(
                                    'assets/icons/whatsapp-white.png',
                                    height: 24,
                                    width: 24,
                                    color: Colors.blue,
                                  ),
                                  const SizedBox(width: 8),
                                  Image.asset(
                                    'assets/icons/tiktok-white.png',
                                    height: 24,
                                    width: 24,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 24),
                        LikeButton(size: 24),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Text(blog.titel, style: AppFonts.h1),
                    const SizedBox(height: 2),
                    Text(
                      'Erstellt am: ${DateFormat('dd.MM.yy').format(blog.createdAt)}',
                      style: AppFonts.caption,
                    ),
                    const SizedBox(height: 24),
                    Placeholder(fallbackHeight: 1000, color: Colors.white),
                  ],
                ),
              ),
            ),

            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: InkWell(
                  onTap: () {
                    context.router.back();
                  },

                  child: Container(
                    child: Icon(Icons.arrow_back, color: Colors.white),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.black.withAlpha(90),
                      borderRadius: BorderRadius.circular(200),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
