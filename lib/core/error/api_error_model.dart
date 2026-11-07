import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error_model.freezed.dart';
part 'api_error_model.g.dart';

@freezed
abstract class ApiErrorModel with _$ApiErrorModel {
  const ApiErrorModel._(); // ← جديد: لازم عشان تقدر تكتب getters أو methods

  const factory ApiErrorModel({
    required String code,
    required String message,
    Object? details, // Object? عشان شكلها بيتغير
  }) = _ApiErrorModel;

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  /// {"email": "email must be an email", "password": "..."}
  Map<String, String> get fieldErrors {
    final d = details;
    if (d is! List) return {};
    return {
      for (final item in d)
        if (item is Map && item['field'] is String && item['errors'] is List)
          item['field'] as String: (item['errors'] as List).join('\n'),
    };
  }
}