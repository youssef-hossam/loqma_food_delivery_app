// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokens_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokensModel _$TokensModelFromJson(Map<String, dynamic> json) => _TokensModel(
  tokenType: json['tokenType'] as String,
  accessToken: json['accessToken'] as String,
  accessTokenExpiresIn: (json['accessTokenExpiresIn'] as num).toInt(),
  refreshToken: json['refreshToken'] as String,
  refreshTokenExpiresIn: (json['refreshTokenExpiresIn'] as num).toInt(),
);

Map<String, dynamic> _$TokensModelToJson(_TokensModel instance) =>
    <String, dynamic>{
      'tokenType': instance.tokenType,
      'accessToken': instance.accessToken,
      'accessTokenExpiresIn': instance.accessTokenExpiresIn,
      'refreshToken': instance.refreshToken,
      'refreshTokenExpiresIn': instance.refreshTokenExpiresIn,
    };
