import 'package:equatable/equatable.dart';

class DataEntity extends Equatable {
  String? id;
  String? title;
  List<String>? translations;
  DataEntity({
    required this.id,
    required this.title,
    required this.translations,
  });

  @override
 
  List<Object?> get props => [
    id,
    title,
    translations,
  ];
}
