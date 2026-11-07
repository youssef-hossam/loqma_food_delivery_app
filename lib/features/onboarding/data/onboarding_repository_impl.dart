import 'package:loqma_food_delivery_app/core/constants/cache_constants.dart';
import 'package:loqma_food_delivery_app/core/utils/cache/cache_helper.dart';
import 'package:loqma_food_delivery_app/features/onboarding/domain/onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  const OnboardingRepositoryImpl();

  @override
  Future<bool> isCompleted() async =>
      CacheHelper.getBool(key: CacheConstants.onboardingCompleted) ?? false;

  @override
  Future<void> markCompleted() =>
      CacheHelper.set(key: CacheConstants.onboardingCompleted, value: true);
}
