import 'package:dartz/dartz.dart';
import 'package:hadithe/Features/adhkar/domain/entity/adhkar_entity.dart';
import 'package:hadithe/core/error/failure.dart';

abstract class GetAdhkarRepository {
  Future<Either<Failure, List<AdhkarsEntity>>> getAdhkar();
    Future<List<AdhkarsEntity>> getAdhkar2();

}
