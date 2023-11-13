import 'package:equatable/equatable.dart';

class TodayWeatherEntity extends Equatable {
  int? pressure;
  String? temperature;
  TodayWeatherEntity({required this.pressure, required this.temperature});
  @override
  
  List<Object?> get props => [
    pressure,
    temperature,
  ];
}
