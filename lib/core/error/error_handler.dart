import 'package:dio/dio.dart';

import 'api_error_model.dart';
import 'failure.dart';

class ErrorHandler {
  static Failure handle(Object error) {
    if (error is DioException) return _fromDio(error);
    return UnknownFailure(error.toString());
  }

  static Failure _fromDio(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.transformTimeout:
        return const NetworkFailure('Connection timed out, try again');
      case DioExceptionType.cancel:
      case DioExceptionType.badCertificate:
      case DioExceptionType.unknown:
        return UnknownFailure(e.message ?? 'Unexpected error');
      case DioExceptionType.connectionError:
        return NetworkFailure('Connection error');

      case DioExceptionType.badResponse:
        final data = e.response?.data;
        if (data is Map<String, dynamic> &&
            data['error'] is Map<String, dynamic>) {
          final apiError = ApiErrorModel.fromJson(data['error']);
          return ServerFailure(
            message: apiError.message,
            code: apiError.code,
            statusCode: e.response?.statusCode,
            fieldErrors: apiError.fieldErrors,
          );
        }
        return ServerFailure(
          message: 'Something went wrong',
          code: 'UNKNOWN',
          statusCode: e.response?.statusCode,
        );
    }
  }
}
