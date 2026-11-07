import 'package:dio/dio.dart';
import 'package:loqma_food_delivery_app/core/network/api_response_model.dart';
import 'package:loqma_food_delivery_app/features/auth/data/models/login_request_body.dart';
import 'package:loqma_food_delivery_app/features/auth/data/models/register_request_body.dart';
import 'package:retrofit/retrofit.dart';
import 'package:loqma_food_delivery_app/core/constants/api_constants.dart';

import '../models/auth_response_model.dart';


part 'auth_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String? baseUrl}) = _AuthApiService;

  @POST(ApiConstants.login)
  Future<ApiResponseModel<AuthResponseModel>> login(
    @Body() LoginRequestBody body,
  );

  @POST(ApiConstants.register)
  Future<ApiResponseModel<AuthResponseModel>> register(
    @Body() RegisterRequestBody body,
  );
}
