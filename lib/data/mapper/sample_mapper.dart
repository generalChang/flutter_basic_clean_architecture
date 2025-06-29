import 'package:flutter_best_practice/data/entity/sample/sample_entity.dart';
import 'package:flutter_best_practice/domain/model/sample/sample_model.dart';

/// Sample Data model (data layer) mapper

extension SampleEntityExt on SampleEntity {
  SampleModel toModel() => SampleModel(id: id, title: title, content: content);
}
