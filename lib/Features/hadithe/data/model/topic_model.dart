import 'package:hadithe/Features/hadithe/domain/entity/topic_entity.dart';

class TopicModel extends TopicEntity {
  TopicModel(
      {required super.id,
      required super.title,
      required super.hadeeths_count,
      required super.parent_id});
  factory TopicModel.fromJson(Map<String, dynamic> json) {
    return TopicModel(
        id: json['id'],
        title: json['title'],
        hadeeths_count: json['hadeeths_count'],
        parent_id: json['parent_id']);
  }
}
