import 'package:json_annotation/json_annotation.dart';

import 'current_entity.dart';

part 'one_call_entity.g.dart';

@JsonSerializable()
class OneCallEntity {
  @JsonKey()
  double? lat;
  @JsonKey()
  double? lon;
  @JsonKey()
  String? timezone;
  @JsonKey(name: 'timezone_offset')
  String? timezoneOffset;
  @JsonKey()
  CurrentEntity? current;

  OneCallEntity({this.lat, this.lon, this.timezone, this.timezoneOffset, this.current});

  factory OneCallEntity.fromJson(Map<String, dynamic> json) => _$OneCallEntityFromJson(json);

  Map<String, dynamic> toJson() => _$OneCallEntityToJson(this);
}