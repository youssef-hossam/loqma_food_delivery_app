import 'package:loqma_food_delivery_app/features/home/data/datasources/home_api_service.dart';
import 'package:loqma_food_delivery_app/features/home/data/models/home_model.dart';

class HomeRemoteDataSource {
  final HomeApiService apiService;

  HomeRemoteDataSource({required this.apiService});

  Future<HomeModel> getHome() async {
    final response = await apiService.getHome();
    return response.data;
  }
}
