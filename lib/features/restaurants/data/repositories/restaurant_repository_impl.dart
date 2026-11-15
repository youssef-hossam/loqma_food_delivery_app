import 'package:dartz/dartz.dart';
import 'package:loqma_food_delivery_app/core/error/error_handler.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/datasources/restaurant_remote_data_source.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/mappers/menu_section_mapper.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/mappers/restaurant_model_mapper.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/menu_section_model.dart';
import 'package:loqma_food_delivery_app/features/restaurants/data/models/restaurant_model.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/restaurant_details_entity.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/repositories/restaurants_repository.dart';

class RestaurantsRepositoryImpl implements RestaurantsRepository {
  final RestaurantsRemoteDataSource remoteDataSource;

  RestaurantsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, RestaurantDetailsEntity>> getRestaurantDetails(
    String id,
  ) async {
    try {
      // Both requests start together, we wait for the two of them
      final results = await Future.wait([
        remoteDataSource.getRestaurant(id),
        remoteDataSource.getMenu(id),
      ]);

      final restaurant = results[0] as RestaurantModel;
      final menu = results[1] as List<MenuSectionModel>;

      return Right(
        RestaurantDetailsEntity(
          restaurant: restaurant.toEntity(),
          menu: menu.map((s) => s.toEntity()).toList(),
        ),
      );
    } catch (error) {
      return Left(ErrorHandler.handle(error));
    }
  }
}
