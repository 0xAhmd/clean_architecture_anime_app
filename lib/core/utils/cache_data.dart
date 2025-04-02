import '../../features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void cacheBooksData(List<BookEntity> books, String boxName) {
  Box<BookEntity> box = Hive.box(boxName);
  box.addAll(books);
}
