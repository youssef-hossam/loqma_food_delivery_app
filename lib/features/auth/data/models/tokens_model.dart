import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokens_model.freezed.dart';
part 'tokens_model.g.dart';
@freezed
abstract class TokensModel with _$TokensModel {
  const factory TokensModel({
    required String tokenType,
    required String accessToken,
    required int accessTokenExpiresIn,
    required String refreshToken,
    required int refreshTokenExpiresIn,
  }) = _TokensModel;
  factory TokensModel.fromJson(Map<String, dynamic> json) =>
      _$TokensModelFromJson(json);
}

