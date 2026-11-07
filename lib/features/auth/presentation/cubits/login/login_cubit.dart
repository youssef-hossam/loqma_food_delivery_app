import 'package:bloc/bloc.dart';
import 'package:loqma_food_delivery_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:loqma_food_delivery_app/features/auth/presentation/cubits/login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase _loginUseCase;

  LoginCubit({required this._loginUseCase}) : super(LoginState.initial());

  Future<void> login({required String email, required String password}) async {
    if (state is LoginLoading) return; // Prevent multiple login attempts

    emit(const LoginState.loading());
    final result = await _loginUseCase.call(email: email, password: password);
    if (isClosed) return; // Prevent state emission if the cubit is closed
    result.fold(
      (failure) => emit(LoginState.failure(failure)),
      (user) => emit(LoginState.success(user)),
    );
  }
}
