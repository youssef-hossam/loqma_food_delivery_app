import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    required String email,
    String? phone,      // اختياري في الـ register، فممكن يرجع null
    String? avatarUrl,  // ممكن يبقى null لو مفيش صورة
    required String locale,
    required String role,
    required DateTime createdAt, // json_serializable بيحوّل الـ String لـ DateTime لوحده
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
