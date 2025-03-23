import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitie.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntite>>> fetchNewestBooks();
  Future<Either<Failure, List<BookEntite>>> fetchFeaturedBooks();
}
