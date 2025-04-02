import '../../../../constants.dart';
import '../../../../core/utils/api_service.dart';
import '../../../../core/utils/cache_data.dart';
import '../models/book_model/book_model.dart';
import '../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSrc {
  Future<List<BookEntity>> fetchNewestBooks();
  Future<List<BookEntity>> fetchFeaturedBooks();
}

class HomeRemoteImplementation extends HomeRemoteDataSrc {
  final ApiService apiService;

  HomeRemoteImplementation({required this.apiService});
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(
        endpoint: "volumes?Filtering=free-ebooks&q=programming");
    List<BookEntity> books = getBooksList(data);

    cacheBooksData(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
        endpoint: "volumes?Filtering=free-ebooks&Sorting=newest&q=programming");
    List<BookEntity> books = getBooksList(data);
    cacheBooksData(books, kNewestBox);
    
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
