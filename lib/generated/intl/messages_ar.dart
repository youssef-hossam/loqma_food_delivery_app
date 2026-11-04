// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ar';

  static String m0(count) => "الحالية (${count})";

  static String m1(amount) => "أضف · ${amount} ج.م";

  static String m2(minutes) => "متوسط ${minutes} دقيقة";

  static String m3(reviews, kcal) => "(${reviews}) · ${kcal} سعر حراري";

  static String m4(date) => "تنتهي ${date}";

  static String m5(amount) => "توصيل ${amount} ج.م";

  static String m6(min, max) => "التوصيل خلال ${min}–${max} دقيقة";

  static String m7(code) => "الخصم (${code})";

  static String m8(km) => "على بعد ${km} كم";

  static String m9(amount) => "+ ${amount} ج.م";

  static String m10(rating) => "★ ${rating}+";

  static String m11(name) => "أهلاً يا ${name}،\nنفسك في إيه النهاردة؟";

  static String m12(count) =>
      "${Intl.plural(count, zero: 'مفيش منتجات', one: 'منتج واحد', two: 'منتجين', few: '${count} منتجات', other: '${count} منتج')}";

  static String m13(min, max) => "${min}–${max} دقيقة";

  static String m14(minutes) => "${minutes} دقيقة";

  static String m15(percent, amount) =>
      "خصم ${percent}% على الطلبات فوق ${amount} ج.م";

  static String m16(minutes) => "هيوصل خلال ${minutes} دقيقة";

  static String m17(count) => "+${count} مطعم";

  static String m18(number) => "طلب رقم ${number}";

  static String m19(count) => "اختار ${count}";

  static String m20(count) => "${count} مكان";

  static String m21(amount) => "${amount} ج.م";

  static String m22(code) => "تم تطبيق ${code}";

  static String m23(code) => "الكود: ${code}";

  static String m24(percent) => "خصم ${percent}%\nعلى أول طلب";

  static String m25(rating) => "تقييم ${rating}";

  static String m26(code) =>
      "انضم لـ لُقْمَة وخد خصم 50% على أول طلب بكود ${code}.";

  static String m27(count) => "${count} تقييم";

  static String m28(count) => "${count} محفوظ";

  static String m29(query) => "مفيش نتايج لـ “${query}”";

  static String m30(count, query) =>
      "${Intl.plural(count, one: 'نتيجة واحدة لـ “${query}”', two: 'نتيجتين لـ “${query}”', few: '${count} نتايج لـ “${query}”', other: '${count} نتيجة لـ “${query}”')}";

  static String m31(terms, privacy) => "أوافق على ${terms} و${privacy}";

  static String m32(count) => "لحد ${count}";

  static String m33(amount) => "وفّرت ${amount} ج.م في الطلب ده";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "activeOrdersTab": m0,
        "addItems": MessageLookupByLibrary.simpleMessage("+ أضف منتجات"),
        "addNewCard": MessageLookupByLibrary.simpleMessage("أضف كارت جديد"),
        "addToCartWithPrice": m1,
        "alreadyHaveAccount":
            MessageLookupByLibrary.simpleMessage("عندك حساب؟"),
        "appName": MessageLookupByLibrary.simpleMessage("لُقْمَة"),
        "apply": MessageLookupByLibrary.simpleMessage("تطبيق"),
        "arrivingIn": MessageLookupByLibrary.simpleMessage("هيوصل خلال"),
        "avgMinutes": m2,
        "bestseller": MessageLookupByLibrary.simpleMessage("الأكثر مبيعًا"),
        "caloriesInfo": m3,
        "cardExpires": m4,
        "cartEmpty": MessageLookupByLibrary.simpleMessage("السلة فاضية"),
        "cashOnDelivery":
            MessageLookupByLibrary.simpleMessage("الدفع عند الاستلام"),
        "categories": MessageLookupByLibrary.simpleMessage("الأقسام"),
        "change": MessageLookupByLibrary.simpleMessage("تغيير"),
        "checkout": MessageLookupByLibrary.simpleMessage("إتمام الطلب"),
        "clear": MessageLookupByLibrary.simpleMessage("مسح"),
        "clearAll": MessageLookupByLibrary.simpleMessage("مسح الكل"),
        "closed": MessageLookupByLibrary.simpleMessage("مقفول"),
        "continueWithApple": MessageLookupByLibrary.simpleMessage("Apple"),
        "continueWithGoogle": MessageLookupByLibrary.simpleMessage("Google"),
        "createAccount": MessageLookupByLibrary.simpleMessage("إنشاء الحساب"),
        "createYourAccount": MessageLookupByLibrary.simpleMessage("اعمل حسابك"),
        "deliverTo": MessageLookupByLibrary.simpleMessage("التوصيل إلى"),
        "delivery": MessageLookupByLibrary.simpleMessage("توصيل"),
        "deliveryFee": MessageLookupByLibrary.simpleMessage("رسوم التوصيل"),
        "deliveryFeeShort": m5,
        "deliveryIn": m6,
        "deliverySchedule": MessageLookupByLibrary.simpleMessage("حدّد ميعاد"),
        "deliveryStandard": MessageLookupByLibrary.simpleMessage("عادي"),
        "deliveryTime": MessageLookupByLibrary.simpleMessage("وقت التوصيل"),
        "details": MessageLookupByLibrary.simpleMessage("التفاصيل"),
        "discountWithCode": m7,
        "dishesSection": MessageLookupByLibrary.simpleMessage("الأكلات"),
        "distanceAway": m8,
        "edit": MessageLookupByLibrary.simpleMessage("تعديل"),
        "email": MessageLookupByLibrary.simpleMessage("الإيميل"),
        "emailAlreadyRegistered": MessageLookupByLibrary.simpleMessage(
            "الإيميل ده متسجّل قبل كده. تحب تسجّل دخول؟"),
        "emailHint": MessageLookupByLibrary.simpleMessage("name@example.com"),
        "errorGeneric":
            MessageLookupByLibrary.simpleMessage("حصلت مشكلة، جرّب تاني."),
        "errorNoInternet":
            MessageLookupByLibrary.simpleMessage("مفيش اتصال بالإنترنت"),
        "errorSessionExpired": MessageLookupByLibrary.simpleMessage(
            "الجلسة خلصت، سجّل دخول تاني."),
        "extraPrice": m9,
        "favorites": MessageLookupByLibrary.simpleMessage("المفضلة"),
        "filterAll": MessageLookupByLibrary.simpleMessage("الكل"),
        "filterDishes": MessageLookupByLibrary.simpleMessage("أكلات"),
        "filterRating": m10,
        "filterRestaurants": MessageLookupByLibrary.simpleMessage("مطاعم"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("نسيت كلمة السر؟"),
        "freeDelivery": MessageLookupByLibrary.simpleMessage("توصيل مجاني"),
        "fullName": MessageLookupByLibrary.simpleMessage("الاسم بالكامل"),
        "getStarted": MessageLookupByLibrary.simpleMessage("ابدأ دلوقتي"),
        "goToCheckout": MessageLookupByLibrary.simpleMessage("كمّل الطلب"),
        "homeGreeting": m11,
        "itemsCount": m12,
        "language": MessageLookupByLibrary.simpleMessage("اللغة"),
        "languageArabic": MessageLookupByLibrary.simpleMessage("العربية"),
        "languageEnglish": MessageLookupByLibrary.simpleMessage("الإنجليزية"),
        "languageSwitchLabel": MessageLookupByLibrary.simpleMessage("EN"),
        "last30Days": MessageLookupByLibrary.simpleMessage("آخر 30 يوم"),
        "limitedOffer":
            MessageLookupByLibrary.simpleMessage("عرض لفترة محدودة"),
        "logIn": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
        "logOut": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
        "loginSubtitle": MessageLookupByLibrary.simpleMessage(
            "سجّل دخولك عشان تكمّل طلب أكلاتك المفضلة."),
        "minutes": MessageLookupByLibrary.simpleMessage("دقيقة"),
        "minutesRange": m13,
        "minutesShort": m14,
        "myAddresses": MessageLookupByLibrary.simpleMessage("عناويني"),
        "myCart": MessageLookupByLibrary.simpleMessage("السلة"),
        "myOrders": MessageLookupByLibrary.simpleMessage("طلباتي"),
        "navHome": MessageLookupByLibrary.simpleMessage("الرئيسية"),
        "navOrders": MessageLookupByLibrary.simpleMessage("طلباتي"),
        "navProfile": MessageLookupByLibrary.simpleMessage("حسابي"),
        "navSearch": MessageLookupByLibrary.simpleMessage("البحث"),
        "next": MessageLookupByLibrary.simpleMessage("التالي"),
        "noAccount": MessageLookupByLibrary.simpleMessage("معندكش حساب؟"),
        "notifications": MessageLookupByLibrary.simpleMessage("الإشعارات"),
        "offerAbove": m15,
        "onboardingArrivingIn": m16,
        "onboardingCustomizeBody": MessageLookupByLibrary.simpleMessage(
            "اختار الحجم، زوّد الإضافات، وسيب ملاحظتك. هنبعتهولك زي ما بتحبه بالظبط."),
        "onboardingCustomizeTitle":
            MessageLookupByLibrary.simpleMessage("كل لقمة\nعلى مزاجك"),
        "onboardingDiscoverBody": MessageLookupByLibrary.simpleMessage(
            "برجر، كشري، سوشي أو كنافة — اكتشف أحسن المطاعم اللي حواليك."),
        "onboardingDiscoverTitle": MessageLookupByLibrary.simpleMessage(
            "كل اللي نفسك فيه،\nفي تطبيق واحد"),
        "onboardingRestaurantsCount": m17,
        "onboardingTrackBody": MessageLookupByLibrary.simpleMessage(
            "شوف الطيار على الخريطة لحظة بلحظة، ويوصلك إشعار أول ما يوصل."),
        "onboardingTrackTitle": MessageLookupByLibrary.simpleMessage(
            "تابع طلبك\nلايف لحد باب البيت"),
        "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
            "اطلب من أحسن المطاعم اللي حواليك وتابع الطيار لايف لحد باب البيت."),
        "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
            "أكلك المفضل،\nيوصلك سخن وبسرعة"),
        "open": MessageLookupByLibrary.simpleMessage("مفتوح"),
        "openNow": MessageLookupByLibrary.simpleMessage("مفتوح دلوقتي"),
        "optionalLabel": MessageLookupByLibrary.simpleMessage("اختياري"),
        "orContinueWith": MessageLookupByLibrary.simpleMessage("أو كمّل بـ"),
        "orderNumber": m18,
        "orderSummary": MessageLookupByLibrary.simpleMessage("ملخص الطلب"),
        "password": MessageLookupByLibrary.simpleMessage("كلمة السر"),
        "passwordRuleLength":
            MessageLookupByLibrary.simpleMessage("8 حروف أو أكتر"),
        "passwordRuleLetter": MessageLookupByLibrary.simpleMessage("حرف"),
        "passwordRuleNumber": MessageLookupByLibrary.simpleMessage("رقم"),
        "pastOrders": MessageLookupByLibrary.simpleMessage("الطلبات السابقة"),
        "payRiderAtDoor":
            MessageLookupByLibrary.simpleMessage("ادفع للطيار على الباب"),
        "paymentMethod": MessageLookupByLibrary.simpleMessage("طريقة الدفع"),
        "paymentMethods": MessageLookupByLibrary.simpleMessage("طرق الدفع"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("رقم الموبايل"),
        "pickATime": MessageLookupByLibrary.simpleMessage("اختار وقت"),
        "pickCount": m19,
        "placeOrder": MessageLookupByLibrary.simpleMessage("تأكيد الطلب"),
        "placesCount": m20,
        "popular": MessageLookupByLibrary.simpleMessage("الأشهر"),
        "popularCuisines":
            MessageLookupByLibrary.simpleMessage("المطابخ الأشهر"),
        "popularNearYou": MessageLookupByLibrary.simpleMessage("الأشهر حواليك"),
        "price": m21,
        "privacyPolicy": MessageLookupByLibrary.simpleMessage("سياسة الخصوصية"),
        "profile": MessageLookupByLibrary.simpleMessage("حسابي"),
        "promoApplied": m22,
        "promoCode": m23,
        "promoCodeHint": MessageLookupByLibrary.simpleMessage("كود الخصم"),
        "promoFirstOrder": m24,
        "rate": MessageLookupByLibrary.simpleMessage("قيّم"),
        "ratingLabel": m25,
        "recent": MessageLookupByLibrary.simpleMessage("الأخيرة"),
        "recentSearches":
            MessageLookupByLibrary.simpleMessage("آخر عمليات البحث"),
        "registerSubtitle": m26,
        "reorder": MessageLookupByLibrary.simpleMessage("اطلب تاني"),
        "requiredLabel": MessageLookupByLibrary.simpleMessage("إجباري"),
        "restaurantsSection": MessageLookupByLibrary.simpleMessage("المطاعم"),
        "retry": MessageLookupByLibrary.simpleMessage("حاول تاني"),
        "reviewsCount": m27,
        "riderOnTheWay":
            MessageLookupByLibrary.simpleMessage("الطيار في الطريق"),
        "saved": MessageLookupByLibrary.simpleMessage("محفوظ"),
        "savedCount": m28,
        "searchHint":
            MessageLookupByLibrary.simpleMessage("ابحث عن أكلة أو مطعم…"),
        "searchNoResults": m29,
        "searchResultsCount": m30,
        "seeAll": MessageLookupByLibrary.simpleMessage("عرض الكل"),
        "signUp": MessageLookupByLibrary.simpleMessage("اعمل حساب"),
        "skip": MessageLookupByLibrary.simpleMessage("تخطي"),
        "specialInstructions":
            MessageLookupByLibrary.simpleMessage("ملاحظات خاصة"),
        "specialInstructionsHint": MessageLookupByLibrary.simpleMessage(
            "مثلاً: من غير مخلل، والصوص على جنب"),
        "spicy": MessageLookupByLibrary.simpleMessage("حار"),
        "statusCancelled": MessageLookupByLibrary.simpleMessage("اتلغى"),
        "statusConfirmed": MessageLookupByLibrary.simpleMessage("اتأكد"),
        "statusDelivered": MessageLookupByLibrary.simpleMessage("اتسلّم"),
        "statusOnTheWay": MessageLookupByLibrary.simpleMessage("في الطريق"),
        "statusPickedUp": MessageLookupByLibrary.simpleMessage("الطيار استلمه"),
        "statusPlaced": MessageLookupByLibrary.simpleMessage("اتبعت"),
        "statusPreparing": MessageLookupByLibrary.simpleMessage("بيتحضّر"),
        "subtotal": MessageLookupByLibrary.simpleMessage("المجموع"),
        "superFast": MessageLookupByLibrary.simpleMessage("سريع جدًا"),
        "termsAgreement": m31,
        "termsOfService":
            MessageLookupByLibrary.simpleMessage("شروط الاستخدام"),
        "theme": MessageLookupByLibrary.simpleMessage("المظهر"),
        "themeDark": MessageLookupByLibrary.simpleMessage("غامق"),
        "themeLight": MessageLookupByLibrary.simpleMessage("فاتح"),
        "themeSystem": MessageLookupByLibrary.simpleMessage("حسب الجهاز"),
        "toggleOff": MessageLookupByLibrary.simpleMessage("مقفول"),
        "toggleOn": MessageLookupByLibrary.simpleMessage("شغّال"),
        "total": MessageLookupByLibrary.simpleMessage("الإجمالي"),
        "totalInclDelivery":
            MessageLookupByLibrary.simpleMessage("الإجمالي (شامل التوصيل)"),
        "trackLive": MessageLookupByLibrary.simpleMessage("تتبّع لايف"),
        "trendingNow":
            MessageLookupByLibrary.simpleMessage("الأكثر طلبًا دلوقتي"),
        "upToCount": m32,
        "validationEmail":
            MessageLookupByLibrary.simpleMessage("اكتب إيميل صحيح"),
        "validationPasswordWeak": MessageLookupByLibrary.simpleMessage(
            "استخدم 8 حروف أو أكتر فيهم حرف ورقم"),
        "validationPhone":
            MessageLookupByLibrary.simpleMessage("اكتب رقم موبايل صحيح"),
        "validationRequired":
            MessageLookupByLibrary.simpleMessage("الخانة دي مطلوبة"),
        "viewCart": MessageLookupByLibrary.simpleMessage("عرض السلة"),
        "welcomeBack": MessageLookupByLibrary.simpleMessage("أهلاً بيك تاني!"),
        "youSaved": m33
      };
}
