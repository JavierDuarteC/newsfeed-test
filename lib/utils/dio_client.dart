import 'package:dio/dio.dart';
import 'package:newsfeed_test/utils/token_interceptor.dart';

class CustomDioClient {
  static Dio buildDioClient(String baseUrl) {
    final dio = Dio()..options = BaseOptions(baseUrl: baseUrl);

    dio.interceptors.addAll(
      [
        TokenInterceptor(),
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      ],
    );

    return dio;
  }
}
