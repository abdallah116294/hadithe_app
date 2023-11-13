part of 'adhan_cubit.dart';

sealed class AdhanState extends Equatable {
  const AdhanState();

  @override
  List<Object> get props => [];
}

final class AdhanInitial extends AdhanState {}

final class AdhanIsloading extends AdhanState {}

final class AdhanLoaded extends AdhanState {
  PrayerTimingsResponseEntity timingsResponse;
  AdhanLoaded({required this.timingsResponse});
}

final class AdhanError extends AdhanState {
  final String error;
  AdhanError({required this.error});
}
