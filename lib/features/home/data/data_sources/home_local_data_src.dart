import 'package:hive_flutter/adapters.dart';

import '../../../../constants.dart';
import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSrc {
  List<BookEntity> fetchNewestBooks({int pageNumber = 0});
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0});
}

class HomeLocalDataSrcImpl extends HomeLocalDataSrc {
  @override
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0}) {
    int startIndex = pageNumber * 10;
    int endIndex = (pageNumber + 1) * 10;
    var box = Hive.box<BookEntity>(kFeaturedBox);
    int len = box.values.length;
    if (startIndex >= len  || endIndex > len) {
      return [];
    }

    return box.values.toList().sublist(startIndex, endIndex);
  }

  @override
  List<BookEntity> fetchNewestBooks({int pageNumber = 0}) {
   int startIndex = pageNumber * 10;
    int endIndex = (pageNumber + 1) * 10;
    var box = Hive.box<BookEntity>(kNewestBox);
    int len = box.values.length;
    if (startIndex >= len  || endIndex > len) {
      return [];
    }

    return box.values.toList().sublist(startIndex, endIndex);
  }
}
