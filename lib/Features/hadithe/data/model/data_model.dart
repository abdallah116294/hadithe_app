import 'package:hadithe/Features/hadithe/domain/entity/data_entity.dart';

class DataModel extends DataEntity {
  DataModel(
      {required super.id, required super.title, required super.translations});
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        id: json['id'], title: json['title'], translations: json['translations']as List<String>);
  }
}
