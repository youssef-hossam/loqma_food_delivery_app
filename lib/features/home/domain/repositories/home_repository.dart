import 'package:dartz/dartz.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/home/domain/entities/home_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeEntity>> getHome();
}
