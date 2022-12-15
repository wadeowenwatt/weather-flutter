import 'weather_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'current_entity.g.dart';

@JsonSerializable()
class CurrentEntity {
  @JsonKey()
  int? dt;
  @JsonKey()
  int? sunrise;
  @JsonKey()
  int? sunset;
  @JsonKey()
  double? temp;
  @JsonKey(name: 'feels_like')
  double? feelsLike;
  @JsonKey()
  int? pressure;
  @JsonKey()
  int? humidity;
  @JsonKey(name: 'dew_point')
  double? dewPoint;
  @JsonKey()
  int? uvi;
  @JsonKey()
  int? clouds;
  @JsonKey()
  int? visibility;
  @JsonKey(name: 'wind_speed')
  double? windSpeed;
  @JsonKey(name: 'wind_deg')
  int? windDeg;
  @JsonKey()
  int? windGust;
  @JsonKey()
  WeatherEntity? weather;

  CurrentEntity(
      {this.dt,
      this.sunrise,
      this.sunset,
      this.temp,
      this.feelsLike,
      this.pressure,
      this.humidity,
      this.dewPoint,
      this.uvi,
      this.clouds,
      this.visibility,
      this.windSpeed,
      this.windDeg,
      this.windGust,
      this.weather});

  factory CurrentEntity.fromJson(Map<String, dynamic> json) => _$CurrentEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentEntityToJson(this);
}
