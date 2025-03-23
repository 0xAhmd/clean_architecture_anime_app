import 'package:bookly_app/features/home/domain/entities/book_entitie.dart';

abstract class HomeRepo{
  Future<List<BookEntite>> fetchNewestBooks();
  Future<BookEntite> fetchFeaturedBooks();
}