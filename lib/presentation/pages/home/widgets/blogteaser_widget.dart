import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:polizen_app/core/routes/app_router.gr.dart';
import 'package:polizen_app/data/models/blog_model.dart';
import 'package:polizen_app/presentation/widgets/text_widget.dart';

class BlogTeaserWidget extends StatelessWidget {
  const BlogTeaserWidget({super.key, required this.blog});

  final Blog blog;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: () {
        context.router.push(DetailRoute());
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Card(
          elevation: 4,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.white.withAlpha(50), width: .5),
          ),

          child: SizedBox(
            width: size.width * 0.7,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: blog.image,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,

                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      HeadingWidget(
                        blog.titel,
                        fontsize: FontSizes.medium,
                        weight: FontWeight.w600,
                      ),

                      const SizedBox(height: 8),
                      Text(
                        blog.excerp,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
