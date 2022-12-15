import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/entities/one_call_entity.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/data/2.5/onecall")
  Future<OneCallEntity> getAllData(
      @Query('lat') double lat,
      @Query('lon') double lon,
      @Query('exclude') String exclude,
      @Query('appid') String apiKey);
}
