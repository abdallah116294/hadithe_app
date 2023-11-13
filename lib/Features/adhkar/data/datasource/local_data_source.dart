import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hadithe/Features/adhkar/data/model/adhkar_model.dart';

abstract class LocalDataSource {
  Future<List<AdhkarModel>> getAdhkar();
  Future<List<AdhkarModel>> getAdhkar2();
}

class LocalDataSourceImpl implements LocalDataSource {
  @override
  Future<List<AdhkarModel>> getAdhkar() async {
    final adhkardata = await rootBundle.loadString("assets/adhkar.json");
    // final adhkarList = json.decode(adhkardata) as List<dynamic>;
    List<Map<String, dynamic>> topicList =
        adhkardata as List<Map<String, dynamic>>;
    List<AdhkarModel> adhkars =
        topicList.map((e) => AdhkarModel.fromJson(e)).toList();
    debugPrint(adhkars.toString());
    // debugPrint(adhkarList.toString());
    // return adhkarList.map((e) => AdhkarModel.fromJson(e)).toList();
    return adhkars;
  }
  
  @override
  Future<List<AdhkarModel>> getAdhkar2() async{
       final adhkardata = await rootBundle.loadString("assets/adhkar.json");
     final adhkarList = json.decode(adhkardata) as List<dynamic>;
    //old code
    // List<Map<String, dynamic>> topicList =
    //     adhkardata as List<Map<String, dynamic>>;
    // List<AdhkarModel> adhkars =
    //     topicList.map((e) => AdhkarModel.fromJson(e)).toList();
    // debugPrint(adhkars.toString());
    //old
     debugPrint(adhkarList.toString());
     return adhkarList.map((e) => AdhkarModel.fromJson(e)).toList();
    //return adhkars;
  }
}
