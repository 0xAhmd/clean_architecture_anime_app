import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);
  Future<Either<Failure, List<BookEntity>>> call() {
    return homeRepo.fetchNewestBooks();
  }
}
