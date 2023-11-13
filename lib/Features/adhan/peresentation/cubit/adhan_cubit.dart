import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadithe/Features/adhan/domain/entity/prayer_times_response_entity.dart';
import 'package:hadithe/Features/adhan/domain/usecase/get_adhan_usecase.dart';
import 'package:hadithe/core/error/failure.dart';
import 'package:hadithe/core/uscase/base_tpoic_get_usecase.dart';

part 'adhan_state.dart';

class AdhanCubit extends Cubit<AdhanState> {
  GetAdhanUseCase adhanUseCase;
  AdhanCubit({required this.adhanUseCase}) : super(AdhanInitial());
  Future<void> getAdhanTimes() async {
    emit(AdhanIsloading());
    try {
      Either<Failure, PrayerTimingsResponseEntity> response =
          await adhanUseCase.call(NoParams());
      debugPrint(response.toString());
      emit(response.fold((l) => AdhanError(error: _mapFailureToMsg(l)),
          (r) => AdhanLoaded(timingsResponse: r)));
      debugPrint(response.toString());     
    } catch (error) {
      emit(AdhanError(error: error.toString()));
    }
  }

  String _mapFailureToMsg(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return "ServerFailure";
      case CacheFailure:
        return "CacheFailure";

      default:
        return "unexpectedError";
    }
  }
}
