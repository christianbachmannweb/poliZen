import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
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
              height: 200,
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0xff394E55),
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
              child: Column(),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsetsGeometry.only(left: 16),
                child: InkWell(
                  onTap: () {
                    context.router.back();
                  },

                  child: Container(
                    child: Icon(Icons.arrow_back, color: Colors.black),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey.withAlpha(90),
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
