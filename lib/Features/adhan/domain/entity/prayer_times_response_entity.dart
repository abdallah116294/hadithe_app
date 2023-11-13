import 'package:equatable/equatable.dart';
import 'package:hadithe/Features/adhan/domain/entity/pray_times_entity.dart';
import 'package:hadithe/Features/adhan/domain/entity/today_weather_entity.dart';

class PrayerTimingsResponseEntity extends Equatable {
  String? title;
  String? query;
  String? fore;
  String? method;
  String? prayer_method_name;
  String? daylight;
  String? timezone;
  String? map_image;
  String? sealevel;
  TodayWeatherEntity? today_weather;
  String? link;
  String? qibla_direction;
  String? latitude;
  String? longitude;
  String? address;
  String? city;
  String? state;
  String? postal_code;
  String? country;
  String? country_code;
  List<PrayTimesEntity>? times;
  String? status_valid;
  String? status_code;
  String? status_description;

PrayerTimingsResponseEntity({
  required this.title,
  required this.query,
  required this.fore,
  required this.method,
  required this.prayer_method_name,
  required this.daylight,
  required this.timezone,
  required this.map_image,
  required this.sealevel,
  required this.today_weather,
  required this.link,
  required this.qibla_direction,
  required this.latitude,
  required this.longitude,
  required this.address,
  required this.city,
  required this.state,
  required this.country,
  required this.postal_code,
  required this.country_code,
  required this.times,
  required this.status_code,
  required this.status_valid,
  required this.status_description,

});
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
