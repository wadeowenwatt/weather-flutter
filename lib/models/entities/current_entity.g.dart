// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentEntity _$CurrentEntityFromJson(Map<String, dynamic> json) =>
    CurrentEntity(
      dt: json['dt'] as int?,
      sunrise: json['sunrise'] as int?,
      sunset: json['sunset'] as int?,
      temp: (json['temp'] as num?)?.toDouble(),
      feelsLike: (json['feels_like'] as num?)?.toDouble(),
      pressure: json['pressure'] as int?,
      humidity: json['humidity'] as int?,
      dewPoint: (json['dew_point'] as num?)?.toDouble(),
      uvi: json['uvi'] as int?,
      clouds: json['clouds'] as int?,
      visibility: json['visibility'] as int?,
      windSpeed: (json['wind_speed'] as num?)?.toDouble(),
      windDeg: json['wind_deg'] as int?,
      windGust: json['windGust'] as int?,
      weather: json['weather'] == null
          ? null
          : WeatherEntity.fromJson(json['weather'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentEntityToJson(CurrentEntity instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'uvi': instance.uvi,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'windGust': instance.windGust,
      'weather': instance.weather,
    };
