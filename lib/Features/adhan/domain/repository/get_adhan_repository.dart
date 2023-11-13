import 'package:dartz/dartz.dart';
import 'package:hadithe/Features/adhan/domain/entity/prayer_times_response_entity.dart';
import 'package:hadithe/core/error/failure.dart';

abstract class GetAdhanRepository {
  Future<Either<Failure,PrayerTimingsResponseEntity>> getAdhanTimies();
}
