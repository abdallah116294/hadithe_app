import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadithe/Features/hadithe/domain/entity/each_topic_data_entity.dart';
import 'package:hadithe/Features/hadithe/domain/usecase/get_topic_usecase.dart';
import 'package:hadithe/core/error/failure.dart';

part 'each_topic_data_state.dart';

class EachTopicDataCubit extends Cubit<EachTopicDataState> {
  EachTopicDataCubit({required this.getEachTopicDataUsecase})
      : super(EachTopicDataInitial());
  GetEachTopicDataUsecase getEachTopicDataUsecase;
  Future<void> getEachTopicData(int tpicId) async {
    emit(EachTopicDataIsLoadingState());
    try {
      Either<Failure, EachTopicData> data =
          await getEachTopicDataUsecase.call(tpicId);
      emit(data.fold((l) => EachTopicErrorState(),
          (r) => EachTopicDataLoadeedState(eachTopicData: r)));
    } catch (error) {
      emit(EachTopicErrorState());
    }
  }
}
