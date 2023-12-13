import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadithe/Features/prophetstories/domain/usecase/prophet_usecase.dart';

part 'get_prophet_stories_state.dart';

class GetProphetStoriesCubit extends Cubit<GetProphetStoriesState> {
  GetProphetStoriesCubit({required this.prophetUseCase})
      : super(GetProphetStoriesInitial());
  ProphetUseCase prophetUseCase;
  Future<void> getProphetStories() async {
    emit(GetProphetStoriesLoadingState());
    try {
      var prophets = await prophetUseCase.call();
      emit(GetProphetStoriesLoadedState(prophetStories: prophets));
    } catch (error) {
      emit(GetProphetStoriesErrorState());
    }
  }
}
