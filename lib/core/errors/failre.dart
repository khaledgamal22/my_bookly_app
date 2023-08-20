import 'package:dio/dio.dart';

abstract class Failre {
  final String errorMessage;

  const Failre(this.errorMessage);
}

class ServerFailre extends Failre {
  ServerFailre(super.errorMessage);

  factory ServerFailre.fromDioError(DioException dioException) {
    switch (DioException) {
      case DioException.sendTimeout:
        return ServerFailre('Send timeout with ApiServer');

      case DioException.connectionTimeout:
        return ServerFailre('Connection timeout with ApiServer');

      case DioExceptionType.cancel:
        return ServerFailre('Canceled');

      case DioException.receiveTimeout:
        return ServerFailre('Receive timeout with ApiServer');

      case DioException.badResponse:
        return ServerFailre.fromResponseError(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.unknown:
      if(dioException.message!.contains('SocketException')){
        return ServerFailre('No Internet Connection');
      }else{
        return ServerFailre('Unexpected error,please try again');
      }
      default :
      return ServerFailre('please try again');    
    }
  }
  factory ServerFailre.fromResponseError(int statuscode, dynamic response) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServerFailre(response['error']['message']);
    } else if (statuscode == 404) {
      return ServerFailre('Your requist not found,Please try again');
    } else if (statuscode == 500) {
      return ServerFailre('internal server later,Please try again');
    } else {
      return ServerFailre('Oops, there was an error');
    }
  }
}
