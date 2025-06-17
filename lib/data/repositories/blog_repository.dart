import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:polizen_app/core/error/failiure.dart';
import 'package:polizen_app/data/models/blog_model.dart';
import 'package:pocketbase/pocketbase.dart';

class BlogRepository {
  Future<Either<List<Blog>, Failiure>> getBlogs() async {
    final pb = PocketBase(
      'http://pocketbase-n408sccgcck4c4000o84s48s.49.12.195.2.sslip.io',
    );

    final records = await pb.collection('Blog').getFullList();
    log(records.toString());
    return Right(Failiure(message: '', statusCode: 400));
  }
}
