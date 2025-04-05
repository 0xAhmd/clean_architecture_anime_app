part of 'fetch_newest_books_cubit.dart';

@immutable
sealed class FetchNewestBooksState {}

final class FetchNewestBooksInitial extends FetchNewestBooksState {}

final class FetchNewestBooksLoading extends FetchNewestBooksState {}

final class FetchNewestBooksLoadingPagintation extends FetchNewestBooksState {}

final class FetchNewestBooksFailurePagintation extends FetchNewestBooksState {
  final String errorMessage;

  FetchNewestBooksFailurePagintation(this.errorMessage);
}

final class FetchNewestBooksSuccess extends FetchNewestBooksState {
  final List<BookEntity> books;

  FetchNewestBooksSuccess(this.books);
}

final class FetchNewestBooksFailure extends FetchNewestBooksState {
  final String errMessage;

  FetchNewestBooksFailure(this.errMessage);
}
