import 'package:equatable/equatable.dart';

class TopicEntity extends Equatable {
  String? id;
  String? title;
  String? hadeeths_count;
  String? parent_id;
  TopicEntity({
    required this.id,
    required this.title,
    required this.hadeeths_count,
    required this.parent_id,
  });
  @override
  List<Object?> get props => [
    id,
    title,
    hadeeths_count,
    parent_id,
  ];
}
