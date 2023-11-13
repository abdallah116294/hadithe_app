import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadithe/Features/adhkar/domain/entity/adhkar_entity.dart';
import 'package:hadithe/Features/adhkar/domain/usecase/get_adhkar_usecase.dart';
import 'package:hadithe/Features/adhkar/peresentation/cubit/get_adhkar_state.dart';
import 'package:hadithe/core/error/failure.dart';
import 'package:hadithe/core/uscase/base_tpoic_get_usecase.dart';
import 'package:just_audio/just_audio.dart';

class GetAdhkarCubit extends Cubit<GetAdhkarState> {
  GetAdhkarCubit(
      {required this.getAdhkarUseCase,
      required this.getAdhkarUseCase2,
      required this.player,
      required this.assetsAudioPlayer,
     })
      : super(GetAdhkarInitial());
  static GetAdhkarCubit get(context) => BlocProvider.of(context);
  GetAdhkarUseCase getAdhkarUseCase;
  GetAdhkarUseCase2 getAdhkarUseCase2;
  AudioPlayer player;
  AssetsAudioPlayer assetsAudioPlayer;
  
  Future<void> getAdhkar() async {
    emit(GetAdhkarStateIsLoading());
    try {
      Either<Failure, List<AdhkarsEntity>> adhkars =
          await getAdhkarUseCase.call(NoParams());
      emit(adhkars.fold(
          (failur) => GetAdhkarStateError(error: _mapFailureToMsg(failur)),
          (adhkar) => GetAdhkarStateLoaded(adhkar: adhkar)));
    } catch (error) {
      debugPrint(error.toString());
      emit(GetAdhkarStateError(error: error.toString()));
    }
  }

  Future<void> getAdhkar2() async {
    emit(GetAdhkarStateIsLoading());
    try {
      var response = await getAdhkarUseCase2.call();
      emit(GetAdhkarStateLoaded(adhkar: response));
    } catch (error) {
      debugPrint(error.toString());
      emit(GetAdhkarStateError(error: error.toString()));
    }
  }

  Future<void> playAudio({required String url}) async {
    // final player = AudioPlayer();
    final duration = await player.setAsset(url);
    await player.play();
  }

  Future<void> playAssetsAudio({required String path}) async {
    await assetsAudioPlayer.open(
        autoStart: true, Audio("assets/$path"), showNotification: true);
  }

  Future<void> pauseAssetsAudio() async {
    assetsAudioPlayer.pause();
  }

  void pause() {
    player.pause();
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
