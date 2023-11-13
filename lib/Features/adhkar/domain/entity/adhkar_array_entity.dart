import 'package:equatable/equatable.dart';

class AdhkarArrayEntity extends Equatable {
  int? id;
  String? text;
  int? count;
  String? audio;
  String? filename;
  AdhkarArrayEntity({
    required this.id,
    required this.text,
    required this.count,
    required this.audio,
    required this.filename,
  });
  @override
  
  List<Object?> get props =>[
    id,
    text,
    count,
    audio,
    filename
  ];
}
