import 'package:hadithe/Features/adhkar/data/model/adhkar_array_model.dart';
import 'package:hadithe/Features/adhkar/domain/entity/adhkar_entity.dart';

class AdhkarModel extends AdhkarsEntity {
  AdhkarModel(
      {required super.id,
      required super.category,
      required super.audio,
      required super.filename,
      required super.array});
  factory AdhkarModel.fromJson(Map<String, dynamic> json) {
    return AdhkarModel(
        id: json['id'],
        category: json['category'],
        audio: json['audio'],
        filename: json['filename'],
        array: json["array"]!=null?(json["array"]as List<dynamic>).map((e) =>AdhkarArrayModel.fromJson(e)).toList():null,
        );
  }
}
