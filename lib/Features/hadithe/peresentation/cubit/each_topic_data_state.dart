part of 'each_topic_data_cubit.dart';

sealed class EachTopicDataState extends Equatable {
  const EachTopicDataState();

  @override
  List<Object> get props => [];
}

final class EachTopicDataInitial extends EachTopicDataState {}

final class EachTopicDataIsLoadingState extends EachTopicDataState {}

final class EachTopicDataLoadeedState extends EachTopicDataState {
  final EachTopicData eachTopicData;
 const EachTopicDataLoadeedState({required this.eachTopicData});
}
final class EachTopicErrorState extends EachTopicDataState{}