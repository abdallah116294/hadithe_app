import 'package:dartz/dartz.dart';
import 'package:hadithe/Features/adhkar/data/datasource/local_data_source.dart';
import 'package:hadithe/Features/adhkar/domain/entity/adhkar_entity.dart';
import 'package:hadithe/Features/adhkar/domain/repository/get_adhkar_repository.dart';
import 'package:hadithe/core/error/failure.dart';

class GetAdhkarRepositoryImpl implements GetAdhkarRepository {
  LocalDataSource localDataSource;
  GetAdhkarRepositoryImpl({required this.localDataSource});
  @override
  Future<Either<Failure, List<AdhkarsEntity>>> getAdhkar() async {
    try {
      var data = await localDataSource.getAdhkar();
      return Right(data);
    } catch (error) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<List<AdhkarsEntity>> getAdhkar2() async {
    var respone = await localDataSource.getAdhkar2();
    return respone;
  }
}
