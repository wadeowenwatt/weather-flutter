import 'package:dio/dio.dart';

import '../configs/app_configs.dart';
import 'api_client.dart';

class ApiUtil {
  static Dio? dio;

  static Dio getDio() {
    if (dio == null) {
      dio = Dio();
      dio!.options.connectTimeout = 60000;
      // dio!.interceptors.add(ApiInterceptors());
    }
    return dio!;
  }

  static ApiClient get apiClient {
    final apiClient = ApiClient(getDio(), baseUrl: AppConfig.baseUrl);
    return apiClient;
  }
}