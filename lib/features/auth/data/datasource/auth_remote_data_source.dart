import 'package:loqma_food_delivery_app/features/auth/data/datasource/auth_api_service.dart';
import 'package:loqma_food_delivery_app/features/auth/data/models/auth_response_model.dart';
import 'package:loqma_food_delivery_app/features/auth/data/models/login_request_body.dart';
import 'package:loqma_food_delivery_app/features/auth/data/models/register_request_body.dart';

class AuthRemoteDataSource {
  AuthApiService apiService;

  AuthRemoteDataSource({required this.apiService});

  Future<AuthResponseModel> login(LoginRequestBody body) async {
    final response = await apiService.login(body);
    return response.data;
  }

  Future<AuthResponseModel> register(RegisterRequestBody body) async {
    final response = await apiService.register(body);
    return response.data;
  }
}
