import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:loqma_food_delivery_app/core/constants/api_constants.dart';
import 'package:loqma_food_delivery_app/core/network/api_response_model.dart';
import 'package:loqma_food_delivery_app/features/home/data/models/home_model.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String? baseUrl}) = _HomeApiService;

  @GET(ApiConstants.home)
  Future<ApiResponseModel<HomeModel>> getHome();
}
