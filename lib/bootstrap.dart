import 'package:flutter/material.dart';
import 'package:polizen_app/data/repositories/blog_repository.dart';
import 'package:polizen_app/presentation/app.dart';

void bootstrap() {
  BlogRepository().getBlogs();
  runApp(MyApp());
}
