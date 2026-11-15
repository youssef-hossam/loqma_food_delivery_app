import 'package:dartz/dartz.dart';
import 'package:loqma_food_delivery_app/core/error/error_handler.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/cart/data/datasources/cart_remote_data_source.dart';
import 'package:loqma_food_delivery_app/features/cart/data/mappers/cart_mapper.dart';
import 'package:loqma_food_delivery_app/features/cart/data/models/add_cart_item_body.dart';
import 'package:loqma_food_delivery_app/features/cart/domain/entities/cart_entity.dart';
import 'package:loqma_food_delivery_app/features/cart/domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final CartRemoteDataSource remoteDataSource;

  CartRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, CartEntity>> getCart() async {
    try {
      final cart = await remoteDataSource.getCart();
      return Right(cart.toEntity());
    } catch (error) {
      return Left(ErrorHandler.handle(error));
    }
  }

  @override
  Future<Either<Failure, CartEntity>> addItem({
    required String dishId,
    required int quantity,
    required List<String> optionIds,
    String? notes,
    bool replace = false,
  }) async {
    try {
      final body = AddCartItemBody(
        menuItemId: dishId,
        quantity: quantity,
        optionIds: optionIds,
        // Don't send an empty note
        notes: notes == null || notes.trim().isEmpty ? null : notes.trim(),
      );
      final cart = await remoteDataSource.addItem(body, replace: replace);
      return Right(cart.toEntity());
    } catch (error) {
      return Left(ErrorHandler.handle(error));
    }
  }

  @override
  Future<Either<Failure, CartEntity>> updateQuantity(
    String itemId,
    int quantity,
  ) async {
    try {
      final cart = await remoteDataSource.updateItem(itemId, quantity);
      return Right(cart.toEntity());
    } catch (error) {
      return Left(ErrorHandler.handle(error));
    }
  }

  @override
  Future<Either<Failure, CartEntity>> removeItem(String itemId) async {
    try {
      final cart = await remoteDataSource.removeItem(itemId);
      return Right(cart.toEntity());
    } catch (error) {
      return Left(ErrorHandler.handle(error));
    }
  }
}
