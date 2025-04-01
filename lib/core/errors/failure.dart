import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with API server");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout with API server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout with API server");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad certificate with API server");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request to API server was cancelled");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection error with API server");
      case DioExceptionType.unknown:
        return ServerFailure("Unexpected error occurred");
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400) {
      return ServerFailure("Request not Found Please Try Again Later.");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server Error Please Try Again Later.");
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else {
      return ServerFailure("Error, Please Try Again Later.");
    }
  }
}
