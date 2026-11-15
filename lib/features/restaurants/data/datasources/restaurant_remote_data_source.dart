import 'package:loqma_food_delivery_app/features/restaurants/data/datasources/restaurant_api_service.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/dish_details_model.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/menu_section_model.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/restaurant_model.dart';

class RestaurantsRemoteDataSource {
  final RestaurantsApiService apiService;

  RestaurantsRemoteDataSource({required this.apiService});

  Future<RestaurantModel> getRestaurant(String id) async {
    final response = await apiService.getRestaurant(id);
    return response.data;
  }

  Future<List<MenuSectionModel>> getMenu(String id) async {
    final response = await apiService.getMenu(id);
    return response.data;
  }

  Future<DishDetailsModel> getDishDetails(String id) async {
    final response = await apiService.getDishDetails(id);
    return response.data;
  }
}
