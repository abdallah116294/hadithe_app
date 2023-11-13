import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hadithe/core/api/api_endpoints.dart';

class ApiHelper {
  final Dio _dio;
  ApiHelper(this._dio);
  Future<List<Map<String, dynamic>>> getTopic() async {
    try {
      var response = await _dio.get(
          ApiEndpoint.baseUrl + ApiEndpoint.listOTpics,
          queryParameters: {"language": "ar"});
      debugPrint(response.data.toString());
      if (response.statusCode == 200) {
        if (response.data is List<dynamic>) {
          List<dynamic> responseData = response.data as List<dynamic>;
          List<Map<String, dynamic>> resultList =
              responseData.map((item) => item as Map<String, dynamic>).toList();
          return resultList;
        } else {
          throw Exception("Invalid respone data format");
        }
      } else {
        debugPrint("Error ${response.statusCode}");
        throw Exception("Error ${response.statusCode}");
      }
    } catch (error) {
      debugPrint("Error $error");
      throw Exception("Error$error");
    }
  }

  Future<Map<String, dynamic>> getEachTopicData(int categoryId) async {
    try {
      var response = await _dio
          .get(ApiEndpoint.baseUrl + ApiEndpoint.listOTpics, queryParameters: {
        "language": "ar",
        "category_id": categoryId,
        "page": 1,
        "per_page": 20
      });
      debugPrint(response.data);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        debugPrint("Error ${response.statusCode}");
        throw Exception("Exception Error ${response.statusCode}");
      }
    } catch (error) {
      debugPrint("Error $error");
      throw Exception("Exception Error $error");
    }
  }

  Future<Map<String, dynamic>> getAdhantime() async {
    try {
      var response = await _dio.get(
          ApiEndpoint.adhanBaseurl + ApiEndpoint.endPonuitAdhan,
          queryParameters: {"address": "cairo"});
      debugPrint(response.data);
      if (response.statusCode == 200) {  
        return response.data;
      }else {
        debugPrint("Error ${response.statusCode}");
        throw Exception("Exception Error ${response.statusCode}");
      }
    } catch (error) {
      debugPrint("Error $error");
      throw Exception("Exception Error $error");
    }
  }
    Future<Map<String, dynamic>> getAdhantime2() async {
    try {
      var response = await _dio.get(
          ApiEndpoint.adhan2BaseUrl+ApiEndpoint.adhan2EndPoint,
          queryParameters: {
            "key": ApiEndpoint.apikeyadhan
            });
      debugPrint(response.data.toString());
      if (response.statusCode == 200) {  
        return response.data;
      }else {
        debugPrint("Error ${response.statusCode}");
        throw Exception("Exception Error ${response.statusCode}");
      }
    } catch (error) {
      debugPrint("Error $error");
      throw Exception("Exception Error $error");
    }
  }
}
//https://hadeethenc.com/api/v1/hadeeths/list/?language=ar&category_id=2&page=1&per_page=20