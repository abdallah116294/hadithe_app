import 'package:hadithe/Features/hadithe/data/model/each_topic_data_model.dart';
import 'package:hadithe/Features/hadithe/data/model/topic_model.dart';
import 'package:hadithe/core/api/api_helper.dart';

abstract class RemoteDataSource {
  Future<List<TopicModel>> getTopic();
  Future<EachTopicDataModel> getEachTopic(int topicID);
}

class RemoteDataSourceImpl extends RemoteDataSource {
  ApiHelper apiHelper;
  RemoteDataSourceImpl({required this.apiHelper});
  @override
  Future<List<TopicModel>> getTopic() async {
    var response = await apiHelper.getTopic();
    List<Map<String, dynamic>> topicList =
        response;
    List<TopicModel> topics =
        topicList.map((topicjson) => TopicModel.fromJson(topicjson)).toList();
    return topics;
  }

  @override
  Future<EachTopicDataModel> getEachTopic(int topicID) async {
    var response = await apiHelper.getEachTopicData(topicID);
    return EachTopicDataModel.fromJson(response);
  }
}
