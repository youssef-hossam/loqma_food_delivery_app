import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loqma_food_delivery_app/features/onboarding/domain/onboarding_repository.dart';

/// State = index of the current onboarding page.
class OnboardingCubit extends Cubit<int> {
  OnboardingCubit(this._repository) : super(0);

  final OnboardingRepository _repository;

  static const pagesCount = 3;

  bool get isLast => state == pagesCount - 1;

  void pageChanged(int index) => emit(index);

  Future<void> complete() => _repository.markCompleted();
}
