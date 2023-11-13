import 'package:flutter/material.dart';
import 'package:hadithe/Features/adhan/data/model.dart/prayer_timer_response_mode.dart';
import 'package:hadithe/core/api/api_helper.dart';

abstract class AdhanRemoteDataSource {
  Future<PrayerTimingsResponseModel> getAdhan();
}

class AdhanRemoteDataSourceImpl implements AdhanRemoteDataSource {
  final ApiHelper apiHelper;
  AdhanRemoteDataSourceImpl({required this.apiHelper});

  @override
  Future<PrayerTimingsResponseModel> getAdhan() async {
    var response = await apiHelper.getAdhantime2();
    debugPrint(response.toString());
    return PrayerTimingsResponseModel.formJson(response);
  }
}
