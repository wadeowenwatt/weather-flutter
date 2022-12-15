// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_call_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OneCallEntity _$OneCallEntityFromJson(Map<String, dynamic> json) =>
    OneCallEntity(
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      timezone: json['timezone'] as String?,
      timezoneOffset: json['timezone_offset'] as String?,
      current: json['current'] == null
          ? null
          : CurrentEntity.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OneCallEntityToJson(OneCallEntity instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezone_offset': instance.timezoneOffset,
      'current': instance.current,
    };
