import 'package:dio/dio.dart';
import 'package:movies_app/constants/helper.dart';

import 'package:movies_app/constants/stings.dart';
import 'package:movies_app/env/env.dart';

/// Singleton Web service responsible
class WebService {
  static final WebService _moviesWebServices = WebService.internal();

  factory WebService() => _moviesWebServices;

  WebService.internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ConstantStrings.baseUrl,
        /*receiveDataWhenStatusError: true,
        headers: {
          'Authorization': 'Bearer ${Env.tmdbApiKey}',
          'accept': 'application/json',
        },*/
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 20),
      ),
    );
    _dio.interceptors.add(ErrorInterceptor(_dio));
  }
  late Dio _dio;

  /// Returns a list of Movies limited by the page limit
  Future<Response> getRequest(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _dio.get(
      '$path?api_key=${Env.tmdbApiKey}',
      queryParameters: queryParameters,
    );

    return response;
  }
}

class ErrorInterceptor extends Interceptor {
  final Dio dio;

  ErrorInterceptor(this.dio);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
        throw ConnectionTimeOutException(err.requestOptions);
      case DioExceptionType.sendTimeout:
        throw SendTimeOutException(err.requestOptions);
      case DioExceptionType.receiveTimeout:
        throw ReceiveTimeOutException(err.requestOptions);
      case DioExceptionType.badResponse:
        Log.debug("STATUS CODE : ${err.response?.statusCode}");
        Log.debug("${err.response?.data}");
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(err.requestOptions);
          case 401:
            throw UnauthorizedException(err.requestOptions);
          case 404:
            throw NotFoundException(err.requestOptions);
          case 409:
            throw ConflictException(err.requestOptions);
          case 500:
            throw InternalServerErrorException(err.requestOptions);
        }
        break;
      case DioExceptionType.cancel:
        break;
      default:
        Log.debug(err.message);
        throw NoInternetConnectionException(err.requestOptions);
    }
    return handler.next(err);
  }
}

class ConnectionTimeOutException extends DioException {
  ConnectionTimeOutException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Connection Timed out, Please try again';
  }
}

class SendTimeOutException extends DioException {
  SendTimeOutException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Send Timed out, Please try again';
  }
}

class ReceiveTimeOutException extends DioException {
  ReceiveTimeOutException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Receive Timed out, Please try again';
  }
}

//**********-----STATUS CODE ERROR HANDLERS--------**********

class BadRequestException extends DioException {
  BadRequestException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Invalid request';
  }
}

class InternalServerErrorException extends DioException {
  InternalServerErrorException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Internal server error occurred, please try again later.';
  }
}

class ConflictException extends DioException {
  ConflictException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Conflict occurred';
  }
}

class UnauthorizedException extends DioException {
  UnauthorizedException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Access denied';
  }
}

class NotFoundException extends DioException {
  NotFoundException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The requested information could not be found';
  }
}

class NoInternetConnectionException extends DioException {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'No internet connection detected, please try again.';
  }
}
