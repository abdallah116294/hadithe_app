import 'package:hadithe/Features/adhan/data/model.dart/timings_model.dart';
import 'package:hadithe/Features/adhan/data/model.dart/today_wather_model.dart';
import 'package:hadithe/Features/adhan/domain/entity/prayer_times_response_entity.dart';

class PrayerTimingsResponseModel extends PrayerTimingsResponseEntity {
  PrayerTimingsResponseModel(
      {required super.title,
      required super.query,
      required super.fore,
      required super.method,
      required super.prayer_method_name,
      required super.daylight,
      required super.timezone,
      required super.map_image,
      required super.sealevel,
      required super.today_weather,
      required super.link,
      required super.qibla_direction,
      required super.latitude,
      required super.longitude,
      required super.address,
      required super.city,
      required super.state,
      required super.country,
      required super.postal_code,
      required super.country_code,
      required super.times,
      required super.status_code,
      required super.status_valid,
      required super.status_description});
  factory PrayerTimingsResponseModel.formJson(Map<String, dynamic> json) {
    return PrayerTimingsResponseModel(
        title: json['title'],
        query: json['query'],
        fore: json['for'],
        method: json['method'],
        prayer_method_name: json['prayer_method_name'],
        daylight: json['daylight'],
        timezone: json['timezone'],
        map_image: json['map_image'],
        sealevel: json['sealevel'],
        today_weather:TodayWeatherModel.fromJson(json['today_weather']),
        link: json['link'],
        qibla_direction: json['qibla_direction'],
        latitude: json['latitude'],
        longitude: json['longitude'],
        address: json['address'],
        city: json['city'],
        state: json['state'],
        country: json['country'],
        postal_code: json['postal_code'],
        country_code: json['country_code'],
        times: json['times']!=null?(json["times"]as List<dynamic>).map((e) => PrayTimesModel.fromJson(e)).toList():null,
        status_code: json['status_code'],
        status_valid: json['status_valid'],
        status_description: json['status_description']);
  }
}
