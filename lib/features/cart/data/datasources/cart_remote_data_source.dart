import 'package:loqma_food_delivery_app/features/cart/data/datasources/cart_api_service.dart';
import 'package:loqma_food_delivery_app/features/cart/data/models/add_cart_item_body.dart';
import 'package:loqma_food_delivery_app/features/cart/data/models/cart_model.dart';
import 'package:loqma_food_delivery_app/features/cart/data/models/update_cart_item_body.dart';

class CartRemoteDataSource {
  final CartApiService apiService;

  CartRemoteDataSource({required this.apiService});

  Future<CartModel> getCart() async {
    final response = await apiService.getCart();
    return response.data;
  }

  Future<CartModel> addItem(AddCartItemBody body, {required bool replace}) async {
    final response = await apiService.addItem(body, replace);
    return response.data;
  }

  Future<CartModel> updateItem(String id, int quantity) async {
    final response = await apiService.updateItem(
      id,
      UpdateCartItemBody(quantity: quantity),
    );
    return response.data;
  }

  Future<CartModel> removeItem(String id) async {
    final response = await apiService.removeItem(id);
    return response.data;
  }
}
