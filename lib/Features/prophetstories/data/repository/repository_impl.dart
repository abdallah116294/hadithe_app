import 'package:hadithe/Features/prophetstories/data/datasource/local_data_source.dart';
import 'package:hadithe/Features/prophetstories/domain/entity/prophet_entity.dart';
import 'package:hadithe/Features/prophetstories/domain/repository/prophet_repository.dart';

class ProphetRepositoryImpl implements ProphetRepository {
  ProphetLocalDataSource localDatSourceOImpl;
  ProphetRepositoryImpl({required this.localDatSourceOImpl});
  @override
  Future<List<ProphetEntity>> getProphetStory() async {
    var prophetstory = await localDatSourceOImpl.getProphet();
    return prophetstory;
  }
}
