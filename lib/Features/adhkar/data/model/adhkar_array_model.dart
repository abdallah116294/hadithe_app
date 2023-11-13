import 'package:hadithe/Features/adhkar/domain/entity/adhkar_array_entity.dart';

class AdhkarArrayModel extends AdhkarArrayEntity {
  AdhkarArrayModel(
      {required super.id,
      required super.text,
      required super.count,
      required super.audio,
      required super.filename});
  factory AdhkarArrayModel.fromJson(Map<String, dynamic> json) {
    return AdhkarArrayModel(
        id: json['id'],
        text: json['text'],
        count: json['count'],
        audio: json['audio'],
        filename: json['filename']);
  }
}
