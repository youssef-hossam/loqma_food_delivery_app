import 'package:bloc/bloc.dart';
import 'package:loqma_food_delivery_app/features/auth/domain/usecases/register_usecase.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/cubits/register/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterUseCase _registerUseCase;

  RegisterCubit({required this._registerUseCase})
    : super(RegisterState.initial());

  Future<void> register({
    required String name,
    required String email,
    required String password,
    String? phone,
  }) async {
    if (state is RegisterLoading) return; // Prevent multiple login attempts

    emit(const RegisterState.loading());
    final result = await _registerUseCase.call(
      name: name,
      email: email,
      password: password,
      phone: phone,
    );
    result.fold(
      (failure) => emit(RegisterState.failure(failure)),
      (user) => emit(RegisterState.success(user)),
    );
    if (isClosed) return; // Prevent state emission if the cubit is closed
  }
}
