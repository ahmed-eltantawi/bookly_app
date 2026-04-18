import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          errorMessage: 'Connection timeout with ApiServer',
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          errorMessage: 'Send timeout with ApiServer',
        );
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          errorMessage: 'Receive timeout with ApiServer',
        );
      case DioExceptionType.badCertificate:
        return ServerFailure(
          errorMessage: 'Bad certificate with ApiServer',
        );
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          e.response?.statusCode,
          e.response?.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(
          errorMessage: 'Request to ApiServer was canceled',
        );
      case DioExceptionType.connectionError:
        return ServerFailure(
          errorMessage: 'Connection error with ApiServer',
        );
      case DioExceptionType.unknown:
        return ServerFailure(
          errorMessage: 'Unexpected error, please try again',
        );
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      final error = response is Map<String, dynamic> ? response['error'] : null;

      return ServerFailure(
        errorMessage:
            error is Map<String, dynamic>
                ? error['message']?.toString() ??
                    'Oops there was an error, please try again'
                : 'Oops there was an error, please try again',
      );
    } else if (statusCode == 404) {
      return ServerFailure(
        errorMessage: 'Your request was not found, please try again',
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        errorMessage: 'Internal server error, please try again later',
      );
    } else {
      return ServerFailure(
        errorMessage: 'Oops there was an error, please try again',
      );
    }
  }
}
