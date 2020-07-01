import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class WeatherEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchWeather extends WeatherEvent {
  final city;
  FetchWeather(this.city);
  List<Object> get props {
    return [city];
  }
}

class ResetWeather extends WeatherEvent {}

class WeatherState extends Equatable {
  List<Object> get props => [];
}

class WeatherIsNotSerched extends WeatherState {}

class WeatherIsLoading extends WeatherState {}

class WeatherIsLoaded extends WeatherState {}

class WeatherIsNotLoaded extends WeatherState {}





class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc weatherRepo;
  WeatherBloc(this.weatherRepo);

  WeatherState get initialState => WeatherIsNotSerched();

  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is FetchWeather) {
      yield WeatherIsLoaded();
      try {
        WeatherIsLoading weather = await weatherRepo.getWeabther(event.city);
      } catch (e) {}
    }
  }
}
