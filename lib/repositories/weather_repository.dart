import 'package:call_api_weather/configs/app_configs.dart';
import 'package:call_api_weather/models/entities/one_call_entity.dart';
import 'package:call_api_weather/network/api_client.dart';

abstract class WeatherRepository {
  Future<OneCallEntity> getWeather({required double lat, required double lon});
}

class WeatherRepositoryImp extends WeatherRepository {
  ApiClient apiClient; 
  
  WeatherRepositoryImp({required this.apiClient});

  @override
  Future<OneCallEntity> getWeather({required double lat, required double lon}) async {
    return apiClient.getAllData(lat, lon, WeatherApiConfig.exclude, WeatherApiConfig.apiKey);
  }
}