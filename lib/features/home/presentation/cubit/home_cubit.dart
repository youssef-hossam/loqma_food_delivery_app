import 'package:bloc/bloc.dart';
import 'package:loqma_food_delivery_app/features/home/domain/usecases/get_home_usecase.dart';
import 'package:loqma_food_delivery_app/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.getHomeUseCase}) : super(HomeState.initial());

  final GetHomeUseCase getHomeUseCase;

  Future<void> getHome() async {
    if (state is HomeLoading) return;

    emit(HomeState.loading());
    // Ignore taps while a request is running
    final result = await getHomeUseCase.call();

    // The page may be closed before the response arrives
    if (isClosed) return;

    result.fold(
      (failure) => emit(HomeState.failure(failure)),
      (home) => emit(HomeState.success(home)),
    );
  }
}
