import 'package:hadithe/Features/hadithe/data/model/data_model.dart';
import 'package:hadithe/Features/hadithe/data/model/meta_%20model.dart';
import 'package:hadithe/Features/hadithe/domain/entity/each_topic_data_entity.dart';

class EachTopicDataModel extends EachTopicData {
  EachTopicDataModel({required super.data, required super.meta});
  factory EachTopicDataModel.fromJson(Map<String, dynamic> json) {
    return EachTopicDataModel(data: json["data"]!=null?(json["data"] as List<dynamic>).map((e) => DataModel.fromJson(e)).toList():null, meta: json["meta"]!=null?MetaModel.fromJson(json["meta"]):null);
  }
}
