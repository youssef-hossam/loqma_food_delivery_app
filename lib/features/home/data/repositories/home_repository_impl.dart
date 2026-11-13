import 'package:dartz/dartz.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/home/domain/entities/home_entity.dart';
import 'package:loqma_food_delivery_app/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  @override
  Future<Either<Failure, HomeEntity>> getHome() {
    // TODO: implement getHome
    throw UnimplementedError();
  }
}
