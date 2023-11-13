import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadithe/Features/hadithe/domain/entity/topic_entity.dart';
import 'package:hadithe/core/error/failure.dart';
import 'package:hadithe/core/uscase/base_tpoic_get_usecase.dart';

import '../../domain/usecase/get_topic_usecase.dart';

part 'get_topics_state.dart';

class GetTopicsCubit extends Cubit<GetTopicsState> {
  GetTopicsCubit({required this.getTopicUsecase}) : super(GetTopicsInitial());
  GetTopicUsecase getTopicUsecase;
  Future<void> getTopics() async {
    emit(GetTopicsStateIsloading());
    try {
      Either<Failure, List<TopicEntity>> response =
          await getTopicUsecase(NoParams());
      emit(response.fold(
          (failure) => GetTopicsStateError(msg: _mapFailureToMsg(failure)),
          (topics) => GetTopicsStateLoaded(topicsList: topics)));
    } catch (error) {
      debugPrint("$error");
      emit(GetTopicsStateError(msg: error.toString()));
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
