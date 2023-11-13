import 'package:dartz/dartz.dart';
import 'package:hadithe/Features/hadithe/domain/entity/each_topic_data_entity.dart';
import 'package:hadithe/Features/hadithe/domain/entity/topic_entity.dart';
import 'package:hadithe/core/error/failure.dart';

abstract class GetTopicRepository {
  Future<Either<Failure, List<TopicEntity>>> getTopic();
  Future<Either<Failure, EachTopicData>> getEachTopicData(int topicId);
}
