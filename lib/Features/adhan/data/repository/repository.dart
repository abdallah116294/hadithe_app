import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hadithe/Features/adhan/data/datasource/remote_datasource.dart';
import 'package:hadithe/Features/adhan/domain/entity/prayer_times_response_entity.dart';
import 'package:hadithe/Features/adhan/domain/repository/get_adhan_repository.dart';
import 'package:hadithe/core/error/failure.dart';

class GetAdhanRepositoryImpl implements GetAdhanRepository {
  AdhanRemoteDataSource adhanRemoteDataSource;
  GetAdhanRepositoryImpl({required this.adhanRemoteDataSource});
  @override
  Future<Either<Failure, PrayerTimingsResponseEntity>> getAdhanTimies() async {
    try {
      var response = await adhanRemoteDataSource.getAdhan();
      debugPrint(response.toString());
      return Right(response);
    } catch (error) {
      return Left(ServerFailure());
    }
  }
}
