import 'package:dio/dio.dart';
import 'package:loqma_food_delivery_app/core/constants/api_constants.dart';
import 'package:loqma_food_delivery_app/core/network/api_response_model.dart';
import 'package:loqma_food_delivery_app/features/cart/data/models/add_cart_item_body.dart';
import 'package:loqma_food_delivery_app/features/cart/data/models/cart_model.dart';
import 'package:loqma_food_delivery_app/features/cart/data/models/update_cart_item_body.dart';
import 'package:retrofit/retrofit.dart';

part 'cart_api_service.g.dart';

// Every cart call returns the full cart after the change
@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class CartApiService {
  factory CartApiService(Dio dio) = _CartApiService;

  @GET(ApiConstants.cart)
  Future<ApiResponseModel<CartModel>> getCart();

  @POST(ApiConstants.cartItems)
  Future<ApiResponseModel<CartModel>> addItem(
    @Body() AddCartItemBody body,
    @Query('replace') bool replace,
  );

  @PATCH(ApiConstants.cartItem)
  Future<ApiResponseModel<CartModel>> updateItem(
    @Path('id') String id,
    @Body() UpdateCartItemBody body,
  );

  @DELETE(ApiConstants.cartItem)
  Future<ApiResponseModel<CartModel>> removeItem(@Path('id') String id);
}
