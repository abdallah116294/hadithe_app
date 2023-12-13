import 'package:hadithe/Features/prophetstories/domain/entity/prophet_entity.dart';

abstract class ProphetRepository {
  Future<List<ProphetEntity>> getProphetStory();
}
