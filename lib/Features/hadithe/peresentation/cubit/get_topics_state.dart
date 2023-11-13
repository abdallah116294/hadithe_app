part of 'get_topics_cubit.dart';

sealed class GetTopicsState extends Equatable {
  const GetTopicsState();

  @override
  List<Object> get props => [];
}

final class GetTopicsInitial extends GetTopicsState {}

final class GetTopicsStateIsloading extends GetTopicsState {}

final class GetTopicsStateLoaded extends GetTopicsState {
  List topicsList;
  GetTopicsStateLoaded({required this.topicsList});
}

final class GetTopicsStateError extends GetTopicsState {
  String msg;
  GetTopicsStateError({required this.msg});
}
