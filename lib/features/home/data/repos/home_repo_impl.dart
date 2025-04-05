import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failure.dart';
import '../../domain/entities/book_entity.dart';
import '../../domain/repos/home_repo.dart';
import '../data_sources/home_local_data_src.dart';
import '../data_sources/home_remote_data_src.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSrc homeRemoteDataSrc;
  final HomeLocalDataSrc homeLocalDataSrc;

  HomeRepoImpl(
      {required this.homeRemoteDataSrc, required this.homeLocalDataSrc});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks({int pageNumber = 0}) async {
    try {
      var cachedBooksList = homeLocalDataSrc.fetchFeaturedBooks(
        pageNumber: pageNumber,
      );
      if (cachedBooksList.isNotEmpty) {
        return Right(cachedBooksList);
      }
      var books = await homeRemoteDataSrc.fetchFeaturedBooks(
        pageNumber: pageNumber,
      );
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }








  

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks({int pageNumber = 0}) async {
    try {
      var cachedBooksList = homeLocalDataSrc.fetchNewestBooks(
        pageNumber: pageNumber,
      );
      if (cachedBooksList.isNotEmpty) {
        return Right(cachedBooksList);
      }
      var books = await homeRemoteDataSrc.fetchNewestBooks(
        pageNumber: pageNumber,
      );
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
