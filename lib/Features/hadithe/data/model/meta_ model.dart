import 'package:hadithe/Features/hadithe/domain/entity/meta_data_entity.dart';

class MetaModel extends MetaEntity {
  MetaModel(
      {required super.current_page,
      required super.last_page,
      required super.total_items,
      required super.per_page});
  factory MetaModel.fromJson(Map<String, dynamic> json) {
    return MetaModel(
        current_page: json['current_page'],
        last_page: json['last_page'],
        total_items: json['total_items'],
        per_page: json['per_page']);
  }
}
