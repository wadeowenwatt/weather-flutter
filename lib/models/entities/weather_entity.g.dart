// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherEntity _$WeatherEntityFromJson(Map<String, dynamic> json) =>
    WeatherEntity(
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      timezone: json['timezone'] as String?,
      timezoneOffset: json['timezone_offset'] as String?,
    );

Map<String, dynamic> _$WeatherEntityToJson(WeatherEntity instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezone_offset': instance.timezoneOffset,
    };
