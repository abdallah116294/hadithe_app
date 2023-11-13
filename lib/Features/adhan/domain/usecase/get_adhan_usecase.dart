import 'package:dartz/dartz.dart';
import 'package:hadithe/Features/adhan/domain/entity/prayer_times_response_entity.dart';
import 'package:hadithe/Features/adhan/domain/repository/get_adhan_repository.dart';
import 'package:hadithe/core/error/failure.dart';
import 'package:hadithe/core/uscase/base_tpoic_get_usecase.dart';

class GetAdhanUseCase
    implements AdhkarGetBaseUseCase<PrayerTimingsResponseEntity, NoParams> {
  GetAdhanRepository getAdhanRepository;
  GetAdhanUseCase({required this.getAdhanRepository});
  @override
  Future<Either<Failure, PrayerTimingsResponseEntity>> call(
      NoParams params) async {
    return await getAdhanRepository.getAdhanTimies();
  }
}
