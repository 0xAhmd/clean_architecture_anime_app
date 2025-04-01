import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:hive_flutter/adapters.dart';

abstract class HomeLocalDataSrc {
  List<BookEntity> fetchNewestBooks();
  List<BookEntity> fetchFeaturedBooks();
}

class HomeLocalDataSrcImpl extends HomeLocalDataSrc {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    var box = Hive.box<BookEntity>(kFeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    var box = Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }
}
