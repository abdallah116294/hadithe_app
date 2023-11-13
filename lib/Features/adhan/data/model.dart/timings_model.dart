import 'package:hadithe/Features/adhan/domain/entity/pray_times_entity.dart';

class PrayTimesModel extends PrayTimesEntity {
  PrayTimesModel(
      {required super.dateFor,
      required super.fajr,
      required super.shurooq,
      required super.dhuhr,
      required super.asr,
      required super.maghrib,
      required super.isha});
  factory PrayTimesModel.fromJson(Map<String, dynamic> json) {
    return PrayTimesModel(
        dateFor: json['date_for'],
        fajr: json['fajr'],
        shurooq: json['shurooq'],
        dhuhr: json['dhuhr'],
        asr: json['asr'],
        maghrib: json['maghrib'],
        isha: json['isha']);
  }
}
