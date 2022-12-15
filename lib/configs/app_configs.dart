import 'package:call_api_weather/configs/app_env_configs.dart';

class AppConfig {
  AppConfig._();

  static const String appName = "Weather App";

  static Environment env = Environment.prod;

  ///API Env
  static String get baseUrl => env.baseUrl;

  static String get envName => env.envName;
}

class WeatherApiConfig {
  static const String apiKey = "2f1f308ae7e8589c60232d6f42aa9631";
}