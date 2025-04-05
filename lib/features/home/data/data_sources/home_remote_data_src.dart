import '../../../../constants.dart';
import '../../../../core/utils/api_service.dart';
import '../../../../core/utils/cache_data.dart';
import '../models/book_model/book_model.dart';
import '../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSrc {
  Future<List<BookEntity>> fetchNewestBooks({int pageNumber = 0});
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0});
}

class HomeRemoteImplementation extends HomeRemoteDataSrc {
  final ApiService apiService;

  HomeRemoteImplementation({required this.apiService});
  @override
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0}) async {
    var data = await apiService.get(
        endpoint:
            "volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNumber * 10}");
    List<BookEntity> books = getBooksList(data);

    cacheBooksData(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks({int pageNumber = 0}) async {
    var data = await apiService.get(
        endpoint:
            "volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNumber * 10}");
    List<BookEntity> books = getBooksList(data);

    cacheBooksData(books, kFeaturedBox);
    return books;
  }
}

List<BookEntity> getBooksList(Map<String, dynamic> data) {
  List<BookEntity> books = [];
  for (var bookMap in data["items"]) {
    books.add(BookModel.fromJson(bookMap));
  }
  return books;
}
