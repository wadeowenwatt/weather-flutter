import 'package:json_annotation/json_annotation.dart';

import 'current.dart';

part 'weather_entity.g.dart';

@JsonSerializable()
class WeatherEntity {
  @JsonKey()
  double? lat;
  @JsonKey()
  double? lon;
  @JsonKey()
  String? timezone;
  @JsonKey(name: 'timezone_offset')
  String? timezoneOffset;

  WeatherEntity({this.lat, this.lon, this.timezone, this.timezoneOffset});

  factory WeatherEntity.fromJson(Map<String, dynamic> json) => _$WeatherEntityFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherEntityToJson(this);
}