part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}
final class FeaturedBooksLoading extends FeaturedBooksState {}
final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookEntity> books;
  FeaturedBooksSuccess(this.books);
}
final class FeaturedBooksLoadingPagination extends FeaturedBooksState {
  
}
final class FeaturedBooksPaginationFailure extends FeaturedBooksState {
  final String errorMessage;
  FeaturedBooksPaginationFailure(this.errorMessage);
}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMessage;
  FeaturedBooksFailure(this.errorMessage);
}

