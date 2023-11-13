import 'package:dartz/dartz.dart';
import 'package:hadithe/Features/hadithe/data/datasource/remote_datasource.dart';
import 'package:hadithe/Features/hadithe/domain/entity/each_topic_data_entity.dart';
import 'package:hadithe/Features/hadithe/domain/entity/topic_entity.dart';
import 'package:hadithe/Features/hadithe/domain/repository/get_topic_repository.dart';
import 'package:hadithe/core/error/failure.dart';

class GetTopicRepositortImpl implements GetTopicRepository {
  RemoteDataSource remoteDataSource;
  GetTopicRepositortImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, List<TopicEntity>>> getTopic() async {
    try {
      var response = await remoteDataSource.getTopic();
      return Right(response);
    } catch (error) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, EachTopicData>> getEachTopicData(
      int  topicId) async {
    try {
      var response = await remoteDataSource.getEachTopic(topicId);
      return Right(response);
    } catch (error) {
      return left(ServerFailure());
    }
  }
}
