import 'package:hadithe/Features/adhan/domain/entity/today_weather_entity.dart';

class TodayWeatherModel extends TodayWeatherEntity {
  TodayWeatherModel({required super.pressure, required super.temperature});
  factory TodayWeatherModel.fromJson(Map<String, dynamic> json) {
    return TodayWeatherModel(
        pressure: json['pressure'], temperature: json['temperature']);
  }
}
