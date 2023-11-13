import 'package:equatable/equatable.dart';
import 'package:hadithe/Features/hadithe/domain/entity/data_entity.dart';
import 'package:hadithe/Features/hadithe/domain/entity/meta_data_entity.dart';

class EachTopicData extends Equatable {
  List<DataEntity>? data;
  MetaEntity? meta;
  EachTopicData({required this.data, required this.meta});
  @override
  List<Object?> get props => [
    data,
    meta
  ];
}
