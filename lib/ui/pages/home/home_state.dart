import 'package:call_api_weather/models/entities/weather_entity.dart';
import 'package:equatable/equatable.dart';

import '../../../models/enums/load_status.dart';

class HomeState extends Equatable {
  final LoadStatus loadWeatherStatus;
  final WeatherEntity weathers;

  const HomeState(
      {this.loadWeatherStatus = LoadStatus.initial, this.weathers = const []});

  @override
  List<Object?> get props => [loadWeatherStatus, weathers];

  HomeState copyWith(
      {LoadStatus? loadWeatherStatus, List<WeatherEntity>? weathers}) {
    return HomeState(
        loadWeatherStatus: loadWeatherStatus ?? this.loadWeatherStatus,
        weathers: weathers ?? this.weathers);
  }
}
