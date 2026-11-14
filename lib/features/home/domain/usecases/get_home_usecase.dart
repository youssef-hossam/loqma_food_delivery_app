import 'package:dartz/dartz.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/home/domain/entities/home_entity.dart';
import 'package:loqma_food_delivery_app/features/home/domain/repositories/home_repository.dart';

class GetHomeUseCase {
  final HomeRepository repository;

  GetHomeUseCase({required this.repository});

  Future<Either<Failure, HomeEntity>> call() {
    return repository.getHome();
  }
}
