import 'package:call_api_weather/models/entities/one_call_entity.dart';
import 'package:call_api_weather/models/enums/load_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:call_api_weather/repositories/weather_repository.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  WeatherRepository weatherRepo;

  HomeCubit({required this.weatherRepo}) : super(const HomeState());

  void fetchInitialWeather() async {
    emit(state.copyWith(loadWeatherStatus: LoadStatus.loading));
    try {
      final result = await weatherRepo.getWeather(lat: 91, lon: 91);
      var listResult = <OneCallEntity>[result];
      emit(state.copyWith(
          loadWeatherStatus: LoadStatus.success,
          oneCallData: listResult
      ));
    } catch (e) {
      emit(state.copyWith(loadWeatherStatus: LoadStatus.failure));
    }
  }
}
