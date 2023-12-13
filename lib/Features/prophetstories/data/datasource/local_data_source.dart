import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:hadithe/Features/prophetstories/data/model/prophet_model.dart';
abstract class ProphetLocalDataSource {
  Future<List<ProphetModel>> getProphet();
}

class ProphetLocalDataSourceImpl implements ProphetLocalDataSource {
  @override
  Future<List<ProphetModel>> getProphet() async {
    var prophet_stories =
        await rootBundle.loadString('assets/prophet_stories.json');
    var prophet_stories_list = json.decode(prophet_stories) as List<dynamic>;
    return prophet_stories_list.map((e) =>ProphetModel.fromJson(e) ).toList();
  }
}
