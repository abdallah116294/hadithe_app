import 'package:hadithe/Features/prophetstories/domain/entity/prophet_entity.dart';
import 'package:hadithe/Features/prophetstories/domain/repository/prophet_repository.dart';

class ProphetUseCase {
  ProphetRepository prophetRepository;
  ProphetUseCase({required this.prophetRepository});
  Future<List<ProphetEntity>> call()=>prophetRepository.getProphetStory();
}
