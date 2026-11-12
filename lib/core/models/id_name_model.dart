import 'package:freezed_annotation/freezed_annotation.dart';

part 'id_name_model.freezed.dart';
part 'id_name_model.g.dart';

@freezed
abstract class IdNameModel with _$IdNameModel {
  const factory IdNameModel({required String id, required String name}) =
      _IdNameModel;

  factory IdNameModel.fromJson(Map<String, dynamic> json) =>
      _$IdNameModelFromJson(json);
}
