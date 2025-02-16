import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:karna/api/retro_client.dart';

final restClient = RestClient(dio);

final dio = getDio();

Dio getDio() {
  BaseOptions options = BaseOptions(
    receiveDataWhenStatusError: true,
    contentType: "application/json",
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
    sendTimeout: const Duration(seconds: 30),
  );

  Dio dio = Dio(options);

  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (request, handler) {
      log('API Request BODY: ${request.data}');
      return handler.next(request);
    },
    onResponse: (response, handler) {
      log('API Response: ${response.data}');
      return handler.next(response);
    },
    onError: (DioException e, handler) {
      log("API Error ${e.message} statusCode ${e.response?.statusCode}");
    },
  ));

  return dio;
}
