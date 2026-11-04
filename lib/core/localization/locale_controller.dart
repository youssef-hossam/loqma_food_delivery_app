import 'package:flutter/material.dart';
import 'package:loqma_food_delivery_app/core/utils/cache/cache_constants.dart';
import 'package:loqma_food_delivery_app/core/utils/cache/cache_helper.dart';

/// Holds the app language and remembers it in [CacheHelper].
/// First launch: follows the phone language (ar → Arabic, anything else → English).
class LocaleController extends ValueNotifier<Locale> {
  LocaleController() : super(_initial());

  static const supported = [Locale('en'), Locale('ar')];

  static Locale _initial() {
    final saved = CacheHelper.getString(key: CacheConstants.languageCode);
    if (saved != null) return Locale(saved);
    final device = WidgetsBinding.instance.platformDispatcher.locale.languageCode;
    return device == 'ar' ? const Locale('ar') : const Locale('en');
  }

  bool get isArabic => value.languageCode == 'ar';

  Future<void> setLocale(Locale locale) async {
    if (locale == value) return;
    value = locale;
    await CacheHelper.set(key: CacheConstants.languageCode, value: locale.languageCode);
  }

  Future<void> toggle() => setLocale(isArabic ? const Locale('en') : const Locale('ar'));
}

/// Gives any widget access to the controller: `LocaleScope.of(context).toggle()`.
class LocaleScope extends InheritedNotifier<LocaleController> {
  const LocaleScope({super.key, required LocaleController controller, required super.child})
      : super(notifier: controller);

  static LocaleController of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<LocaleScope>()!.notifier!;
}
