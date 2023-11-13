import 'package:dartz/dartz.dart';
import 'package:hadithe/Features/adhkar/domain/entity/adhkar_entity.dart';
import 'package:hadithe/Features/adhkar/domain/repository/get_adhkar_repository.dart';
import 'package:hadithe/core/error/failure.dart';
import 'package:hadithe/core/uscase/base_tpoic_get_usecase.dart';

class GetAdhkarUseCase implements AdhkarGetBaseUseCase {
  GetAdhkarRepository getAdhkarRepository;
  GetAdhkarUseCase({required this.getAdhkarRepository});
  @override
  Future<Either<Failure, List<AdhkarsEntity>>> call(params) =>
      getAdhkarRepository.getAdhkar();
}

class GetAdhkarUseCase2 {
  GetAdhkarRepository getAdhkarRepository;
  GetAdhkarUseCase2({required this.getAdhkarRepository});
  Future<List<AdhkarsEntity>> call() => getAdhkarRepository.getAdhkar2();
}
