import 'package:call_api_weather/models/entities/one_call_entity.dart';
import 'package:call_api_weather/models/entities/weather_entity.dart';
import 'package:equatable/equatable.dart';

import '../../../models/enums/load_status.dart';

class HomeState extends Equatable {
  final LoadStatus loadWeatherStatus;
  final List<OneCallEntity> oneCallData;

  const HomeState(
      {this.loadWeatherStatus = LoadStatus.initial,
      this.oneCallData = const []});

  @override
  List<Object?> get props => [loadWeatherStatus];

  HomeState copyWith(
      {LoadStatus? loadWeatherStatus, List<OneCallEntity>? oneCallData}) {
    return HomeState(
        loadWeatherStatus: loadWeatherStatus ?? this.loadWeatherStatus,
        oneCallData: oneCallData ?? this.oneCallData);
  }
}
