import 'package:equatable/equatable.dart';
import 'package:hadithe/Features/adhkar/domain/entity/adhkar_array_entity.dart';

class AdhkarsEntity extends Equatable {
  int? id;
  String? category;
  String? audio;
  String? filename;
  List<AdhkarArrayEntity>? array;
AdhkarsEntity({
  required this.id,
  required this.category,
  required this.audio,
  required this.filename,
  required this.array,
});
  @override
  
  List<Object?> get props => [
    id,
    category,
    audio,
    filename,
    array,
  ];
}
