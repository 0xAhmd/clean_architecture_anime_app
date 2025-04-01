import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/data_sources/home_local_data_src.dart';
import 'package:bookly_app/features/home/data/data_sources/home_remote_data_src.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSrc homeRemoteDataSrc;
  final HomeLocalDataSrc homeLocalDataSrc;

  HomeRepoImpl(
      {required this.homeRemoteDataSrc, required this.homeLocalDataSrc});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var cachedBooksList = homeLocalDataSrc.fetchFeaturedBooks();
      if (cachedBooksList.isNotEmpty) {
        return Right(cachedBooksList);
      }
      var books = await homeRemoteDataSrc.fetchFeaturedBooks();
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      var cachedBooksList = homeLocalDataSrc.fetchNewestBooks();
      if (cachedBooksList.isNotEmpty) {
        return Right(cachedBooksList);
      }
      var books = await homeRemoteDataSrc.fetchNewestBooks();
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
