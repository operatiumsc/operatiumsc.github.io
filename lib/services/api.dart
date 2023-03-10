import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'token_manager.dart';

abstract class ApiService {
  Dio init();
}

class DioClient implements ApiService {
  @override
  Dio init() {
    final tokenManager = TokenManager();
    final token = tokenManager.getAuthToken();
    final dio = Dio()
      ..options.baseUrl = ''
      ..options.headers = {
        HttpHeaders.authorizationHeader: 'Bearer $token',
        HttpHeaders.acceptCharsetHeader: 'utf-8'
      }
      ..interceptors.add(DioInterceptor());

    return dio;
  }
}

class DioClientWithoutAuth implements ApiService {
  @override
  Dio init() {
    final dio = Dio()
      ..options.baseUrl = ''
      ..interceptors.add(DioInterceptor());

    return dio;
  }
}

class MockDio implements ApiService {
  @override
  Dio init() {
    final dio = Dio()..interceptors.add(DioInterceptor());
    return dio;
  }
}

class DioInterceptor extends Interceptor {
  @override
  onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    debugPrint('REQUEST[${options.method}] => PATH: ${options.path}');
    debugPrint('DATA: ${options.data}');
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
