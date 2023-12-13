import 'package:equatable/equatable.dart';

class ProphetEntity extends Equatable {
  int? id;
  String? prophet_name;
  String? brief;
  ProphetEntity({
    required this.id,
    required this.prophet_name,
    required this.brief,
  });
  @override
  // TODO: implement props
  List<Object?> get props => [
    id,
    prophet_name,
    brief
  ];
}
