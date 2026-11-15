import 'package:bloc/bloc.dart';
import 'package:loqma_food_delivery_app/features/home/domain/usecases/get_home_usecase.dart';
import 'package:loqma_food_delivery_app/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.getHomeUseCase}) : super(const HomeState.initial());

  final GetHomeUseCase getHomeUseCase;

  // First load: shows the skeleton while waiting
  Future<void> getHome() async {
    // Ignore taps while a request is running
    if (state is HomeLoading) return;
    emit(const HomeState.loading());
    await _fetchHome();
  }

  // Pull to refresh: no loading state, so the old data stays on screen
  Future<void> refreshHome() => _fetchHome();

  Future<void> _fetchHome() async {
    final result = await getHomeUseCase();

    // The page may be closed before the response arrives
    if (isClosed) return;

    result.fold(
      (failure) => emit(HomeState.failure(failure)),
      (home) => emit(HomeState.success(home)),
    );
  }
}
