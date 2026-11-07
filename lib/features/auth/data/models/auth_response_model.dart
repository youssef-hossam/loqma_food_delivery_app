import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:loqma_food_delivery_app/features/auth/data/models/user_model.dart';

import 'tokens_model.dart';
part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

@freezed
abstract class AuthResponseModel with _$AuthResponseModel {
  const factory AuthResponseModel({
    required TokensModel tokens,
    required UserModel user,
  }) = _AuthResponseModel;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}

