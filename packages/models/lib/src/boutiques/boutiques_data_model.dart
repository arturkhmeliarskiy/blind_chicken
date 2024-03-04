import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'boutiques_data_model.freezed.dart';

@freezed
class BoutiquesDataModel with _$BoutiquesDataModel {
  const BoutiquesDataModel._();
  factory BoutiquesDataModel({
    required List<BoutiqueDataModel> data,
  }) = _BoutiquesDataModel;
}
