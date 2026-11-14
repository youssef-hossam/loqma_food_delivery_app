import 'package:dartz/dartz.dart';
import 'package:loqma_food_delivery_app/core/error/error_handler.dart';
import 'package:loqma_food_delivery_app/core/error/failure.dart';
import 'package:loqma_food_delivery_app/features/home/data/datasources/home_remote_data_source.dart';
import 'package:loqma_food_delivery_app/features/home/data/mappers/home_model_mapper.dart';
import 'package:loqma_food_delivery_app/features/home/domain/entities/home_entity.dart';
import 'package:loqma_food_delivery_app/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeRemoteDataSource remoteDataSource;
  HomeRepositoryImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, HomeEntity>> getHome() async {
    try {
      final homeModel = await remoteDataSource.getHome();
      return Right(homeModel.toEntity());
    } catch (error) {
      return Left(ErrorHandler.handle(error));
    }
  }
}
