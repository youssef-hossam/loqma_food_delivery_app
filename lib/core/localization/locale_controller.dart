import 'package:flutter/material.dart';
import 'package:loqma_food_delivery_app/core/constants/cache_constants.dart';
import 'package:loqma_food_delivery_app/core/utils/cache/cache_helper.dart';

// null = use the device language
class LocaleController extends ValueNotifier<Locale?> {
  LocaleController() : super(_savedLocale());

  static Locale? _savedLocale() {
    final saved = CacheHelper.getString(key: CacheConstants.languageCode);
    if (saved == null) return null;
    return Locale(saved);
  }

  static Locale deviceLocale() {
    final code = WidgetsBinding.instance.platformDispatcher.locale.languageCode;
    if (code == 'ar') return const Locale('ar');
    return const Locale('en');
  }

  Locale get currentLocale => value ?? deviceLocale();

  bool get isArabic => currentLocale.languageCode == 'ar';

  Future<void> setLocale(Locale locale) async {
    value = locale;
    await CacheHelper.set(key: CacheConstants.languageCode, value: locale.languageCode);
  }

  Future<void> toggle() async {
    if (isArabic) {
      await setLocale(const Locale('en'));
    } else {
      await setLocale(const Locale('ar'));
    }
  }

  Future<void> useDeviceLanguage() async {
    value = null;
    await CacheHelper.delete(key: CacheConstants.languageCode);
  }
}

class LocaleScope extends InheritedNotifier<LocaleController> {
  const LocaleScope({super.key, required LocaleController controller, required super.child})
      : super(notifier: controller);

  static LocaleController of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LocaleScope>()!.notifier!;
  }
}
