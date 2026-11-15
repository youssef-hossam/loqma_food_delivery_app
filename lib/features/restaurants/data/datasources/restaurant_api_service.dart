import 'package:dio/dio.dart';
import 'package:loqma_food_delivery_app/core/constants/api_constants.dart';
import 'package:loqma_food_delivery_app/core/network/api_response_model.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/dish_details_model.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/menu_section_model.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/restaurant_model.dart';
import 'package:retrofit/retrofit.dart';
part 'restaurant_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class RestaurantsApiService {
  factory RestaurantsApiService(Dio dio) = _RestaurantsApiService;

  @GET(ApiConstants.restaurantDetails)
  Future<ApiResponseModel<RestaurantModel>> getRestaurant(
    @Path('id') String id,
  );

  @GET(ApiConstants.restaurantMenu)
  Future<ApiResponseModel<List<MenuSectionModel>>> getMenu(
    @Path('id') String id,
  );

  @GET(ApiConstants.dishDetails)
  Future<ApiResponseModel<DishDetailsModel>> getDishDetails(
    @Path('id') String id,
  );
}
