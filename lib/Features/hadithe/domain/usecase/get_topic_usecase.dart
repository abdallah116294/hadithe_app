import 'package:dartz/dartz.dart';
import 'package:hadithe/Features/hadithe/domain/entity/each_topic_data_entity.dart';
import 'package:hadithe/Features/hadithe/domain/entity/topic_entity.dart';

import 'package:hadithe/core/error/failure.dart';

import '../../../../core/uscase/base_tpoic_get_usecase.dart';
import '../repository/get_topic_repository.dart';

class GetTopicUsecase
    implements TopicGetBaseUseCase<List<TopicEntity>, NoParams> {
  final GetTopicRepository getTopicRepository;
  GetTopicUsecase({required this.getTopicRepository});
  @override
  Future<Either<Failure, List<TopicEntity>>> call(params) =>
      getTopicRepository.getTopic();
}

class GetEachTopicDataUsecase
    implements TopicGetBaseUseCase<EachTopicData, int> {
  final GetTopicRepository getTopicRepository;
  GetEachTopicDataUsecase({required this.getTopicRepository});
  @override
  Future<Either<Failure, EachTopicData>> call(int topicID) =>
      getTopicRepository.getEachTopicData(topicID);
}
