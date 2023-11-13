import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hadithe/core/error/failure.dart';

abstract class TopicGetBaseUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class AdhkarGetBaseUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
