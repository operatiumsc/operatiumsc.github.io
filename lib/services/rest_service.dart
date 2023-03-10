import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioService {
  Dio init() {
    final Dio dio = Dio();

    //Add dio options below.
    dio.options.baseUrl = '';

    return dio;
  }
}

class DioInterceptor extends Interceptor {
  @override
  onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    debugPrint('REQUEST[${options.method}] => PATH: ${options.path}');
    debugPrint('DATA: ${options.data}');

//Check token
    String token = getStorageService.authToken;
    debugPrint('ACCESS TOKEN HEADER => $token');
    if (token.isNotEmpty) {
      options.headers = {
        HttpHeaders.authorizationHeader: 'Bearer $token',
        HttpHeaders.acceptCharsetHeader: 'utf-8'
      };
    }
    return super.onRequest(options, handler);
  }

  @override
  onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(
        'RESPONSE[${response.statusCode}] FROM [${response.requestOptions.method}] => PATH: ${response.requestOptions.path}');
    debugPrint('DATA: ${response.data}');
    return super.onResponse(response, handler);
  }

  @override
  onError(DioError err, ErrorInterceptorHandler handler) async {
    debugPrint(
        'ERROR[${err.response?.statusCode}] FROM [${err.requestOptions.method}] => ${err.requestOptions.path}');
    debugPrint('MESSAGE: ${err.response?.data}');

    return handler.resolve(
      Response(
        requestOptions: err.requestOptions,
        data: err.response?.data,
        statusCode: err.response?.statusCode,
      ),
    );
    // return super.onError(err, handler);
  }
}
