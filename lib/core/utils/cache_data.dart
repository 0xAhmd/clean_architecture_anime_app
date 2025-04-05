import 'package:hive/hive.dart';

import '../../features/home/domain/entities/book_entity.dart';

void cacheBooksData(List<BookEntity> books, String boxName) {
  var box = Hive.box<BookEntity>(boxName);
  box.addAll(books);
}
