import 'package:dio/dio.dart';

class Failure {
  final String errMassage;

  Failure(this.errMassage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMassage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("connection Timeout");
      case DioExceptionType.sendTimeout:
        return ServerFailure("send Timeout");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("receive Timeout");
      case DioExceptionType.badCertificate:
        return ServerFailure("bad Certificate");
      case DioExceptionType.badResponse:
        return ServerFailure.forBadResponse(dioException);
      case DioExceptionType.cancel:
        return ServerFailure("your Requests is cancel, plz try later");
      case DioExceptionType.connectionError:
        return ServerFailure("your Requests is cancel, plz try later");
      case DioExceptionType.unknown:
        return ServerFailure("your Requests is cancel, plz try later");
    }
  }

  factory ServerFailure.forBadResponse(DioException dioException) {

    if (dioException.response!.statusCode == 400 ||
        dioException.response!.statusCode == 402 ||
        dioException.response!.statusCode == 403) {
      return ServerFailure(dioException.response!.data["error"]["message"]);
    } else if (dioException.response!.statusCode == 404) {
      return ServerFailure("your request not founded");
    } else if (dioException.response!.statusCode == 500) {
      return ServerFailure("internal server error ,plz later again");
    }
    return ServerFailure("ops there is error , plz try later1");
  }
}
