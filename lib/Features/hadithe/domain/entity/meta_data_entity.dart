import 'package:equatable/equatable.dart';

class MetaEntity extends Equatable {
  String? current_page;
  int? last_page;
  int? total_items;
  String? per_page;
  MetaEntity(
      {required this.current_page,
      required this.last_page,
      required this.total_items,
      required this.per_page});
  @override
 
  List<Object?> get props => [
    current_page,
    last_page,
    total_items,
    per_page,
  ];
}
