import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loqma_food_delivery_app/features/restaurants/domain/usecases/get_restaurant_details_usecase.dart';
import 'package:loqma_food_delivery_app/features/restaurants/presentation/cubit/restaurant_details_state.dart';

class RestaurantDetailsCubit extends Cubit<RestaurantDetailsState> {
  RestaurantDetailsCubit({required this.getRestaurantDetailsUseCase})
    : super(const RestaurantDetailsState.initial());

  final GetRestaurantDetailsUseCase getRestaurantDetailsUseCase;

  Future<void> getDetails(String restaurantId) async {
    // Ignore taps while a request is running
    if (state is RestaurantDetailsLoading) return;
    emit(const RestaurantDetailsState.loading());

    final result = await getRestaurantDetailsUseCase(restaurantId);

    // The page may be closed before the response arrives
    if (isClosed) return;
    result.fold(
      (failure) => emit(RestaurantDetailsState.failure(failure)),
      (details) => emit(RestaurantDetailsState.success(details)),
    );
  }
}
