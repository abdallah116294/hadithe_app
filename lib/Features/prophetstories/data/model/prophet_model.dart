import 'package:hadithe/Features/prophetstories/domain/entity/prophet_entity.dart';

class ProphetModel extends ProphetEntity {
  ProphetModel(
      {required super.id, required super.prophet_name, required super.brief});
  factory ProphetModel.fromJson(Map<String, dynamic> json) {
    return ProphetModel(
        id: json['id'],
        prophet_name: json['prophet_name'],
        brief: json['brief']);
  }
}
