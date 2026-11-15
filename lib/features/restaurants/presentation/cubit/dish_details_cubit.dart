import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/usecases/get_dish_details_usecase.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/cubit/dish_details_state.dart';

class DishDetailsCubit extends Cubit<DishDetailsState> {
  DishDetailsCubit({required this.getDishDetailsUseCase})
    : super(const DishDetailsState.initial());

  final GetDishDetailsUseCase getDishDetailsUseCase;

  Future<void> getDish(String dishId) async {
    // Ignore taps while a request is running
    if (state is DishDetailsLoading) return;
    emit(const DishDetailsState.loading());

    final result = await getDishDetailsUseCase(dishId);

    // The page may be closed before the response arrives
    if (isClosed) return;
    result.fold(
      (failure) => emit(DishDetailsState.failure(failure)),
      (dish) => emit(DishDetailsState.success(dish)),
    );
  }
}
