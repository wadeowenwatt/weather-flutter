import 'package:json_annotation/json_annotation.dart';

part 'weather_entity.g.dart';

@JsonSerializable()
class WeatherEntity {
  @JsonKey()
  int? id;
  @JsonKey()
  String? main;
  @JsonKey()
  String? description;
  @JsonKey()
  String? icon;

  WeatherEntity({this.id, this.main, this.description, this.icon});

  factory WeatherEntity.fromJson(Map<String, dynamic> json) => _$WeatherEntityFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherEntityToJson(this);
}