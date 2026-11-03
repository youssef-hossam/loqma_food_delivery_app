# لُقْمَة · Customer App — Architecture

## 1. المبادئ
- **Feature-first + Clean Architecture**: كل feature مستقل بثلاث طبقات: `data` ← `domain` ← `presentation`.
- **الـ domain ما يعرفش Flutter ولا Dio**: بس Entities وUse cases وRepository interfaces.
- **State بـ Cubit** (flutter_bloc): state immutable بـ freezed، وكل شاشة ليها Cubit خاص بيها.
- **الثيم والديزاين tokens من Figma** (`docs/design/figma-tokens.json`) وبيتطبقوا من `lib/core/theme`.

## 2. الطبقات

```
presentation  (Pages, Widgets, Cubit/State)
      │ بيستدعي
      ▼
domain        (Entities, Repository interfaces, UseCases)   ← لا يعتمد على أي حاجة
      ▲ بيتنفذ فيها
data          (DTOs, Remote/Local DataSources, Repository impl)
      │
core          (Dio client, Failures, Router, DI, Theme, Utils)
```

قاعدة الـ import: `presentation → domain ← data`. الـ `presentation` ما يستوردش `data` أبدًا.

## 3. هيكل المجلدات

```
lib/
├── main.dart                 # bootstrap: DI, Hive, runApp
├── app.dart                  # MaterialApp.router + theme + locale
├── core/
│   ├── theme/                # ✅ جاهز: colors, spacing, shadows, typography, theme (من Figma)
│   ├── constants/            # API URLs, keys, durations
│   ├── network/              # Dio client, interceptors (auth/refresh/lang), ApiResponse<T>
│   ├── error/                # Failure (sealed), AppException, mapping من الـ error envelope
│   ├── router/               # go_router + route guards (onboarding/auth)
│   ├── di/                   # get_it registrations
│   ├── utils/                # formatters (EGP, dates), extensions
│   └── widgets/              # shared: LoqmaButton, PriceText, RestaurantCard, Skeletons...
├── l10n/                     # app_ar.arb / app_en.arb
└── features/
    ├── splash/
    ├── onboarding/           # 3 pages + animations + "first run" flag (Hive)
    ├── auth/                 # login, register, forgot/reset password
    ├── home/                 # home shell + bottom nav + banners + categories
    ├── restaurants/          # list, detail (menu), item sheet, search, favorites
    ├── cart/                 # cart cubit (server-synced)
    ├── checkout/             # addresses, promo, payment method, place order (Idempotency-Key)
    ├── tracking/             # live map + socket order status
    ├── orders/               # orders list + details + reorder + review
    └── profile/              # profile, addresses, language, theme, logout
```

كل feature بالشكل ده:

```
features/<name>/
├── data/
│   ├── datasources/   <name>_remote_datasource.dart
│   ├── models/        *_dto.dart   (fromJson / toJson)
│   └── repositories/  <name>_repository_impl.dart
├── domain/
│   ├── entities/      *.dart       (plain Dart)
│   ├── repositories/  <name>_repository.dart   (abstract)
│   └── usecases/      get_x.dart
└── presentation/
    ├── cubit/         <name>_cubit.dart, <name>_state.dart
    ├── pages/         <name>_page.dart
    └── widgets/       ويدجتس خاصة بالـ feature دي بس
```

## 4. الـ Packages

| الغرض | Package |
| --- | --- |
| State | `flutter_bloc` |
| Models | `freezed`, `freezed_annotation`, `json_serializable`, `json_annotation` |
| HTTP | `dio`, `retrofit` (اختياري) |
| DI | `get_it` |
| Navigation | `go_router` |
| Tokens | `flutter_secure_storage` (refresh/access) |
| Cache / offline | `hive_ce`, `hive_ce_flutter` |
| Realtime | `socket_io_client` |
| Maps | `flutter_map`, `latlong2` |
| Fonts | `google_fonts` |
| Animations | `flutter_animate`, `lottie` |
| Loading states | `skeletonizer` |
| Images | `cached_network_image` |
| i18n | `flutter_localizations`, `intl` |
| Push | `firebase_core`, `firebase_messaging` (اختياري) |

تثبيت:

```powershell
flutter pub add flutter_bloc freezed_annotation json_annotation dio get_it go_router flutter_secure_storage hive_ce hive_ce_flutter socket_io_client flutter_map latlong2 google_fonts flutter_animate lottie skeletonizer cached_network_image intl
flutter pub add --dev build_runner freezed json_serializable
```

## 5. الـ Networking

- `ApiResponse<T>` بيقرا الـ envelope: `{ success, data, meta }`.
- أي خطأ بيتحول لـ `Failure` (sealed): `NetworkFailure`, `UnauthorizedFailure`, `ValidationFailure(details)`, `ServerFailure`.
- `code` في الـ error (زي `TOKEN_EXPIRED`, `PROMO_ALREADY_USED`) بيتعمله map لرسالة مترجمة.
- **Interceptors**:
  1. `AuthInterceptor`: بيحط `Authorization: Bearer`.
  2. `RefreshInterceptor`: لو `401 TOKEN_EXPIRED` ينادي `/auth/refresh` مرة واحدة ويعيد الـ request.
  3. `LangInterceptor`: بيحط `Accept-Language` (ar / en).
- Orders: كل `POST /orders` لازم `Idempotency-Key` (UUID v4 بيتولد مرة واحدة لكل checkout).

## 6. Navigation (go_router)

```
/splash → (first run?) /onboarding → /login
                                   ↘ /home (ShellRoute + bottom nav)
/home            Home
/restaurants/:id Restaurant  → /restaurants/:id/items/:itemId (sheet)
/cart            Cart        → /checkout → /orders/:id/track
/orders          Orders      → /orders/:id
/profile         Profile     → /profile/addresses, /profile/settings
```

Redirect guard: لو مفيش token → `/login`. لو مش logged-in وده أول مرة → `/onboarding`.

## 7. الثيم والديزاين

- الألوان: `context.loqma.primary`, `context.loqma.textSecondary` ... (من `LoqmaColors`، بتتبدل تلقائي Light/Dark).
- المسافات والـ radius: `AppSpacing.s16`, `AppRadius.mdAll`.
- الظلال: `AppShadows.card`, `AppShadows.float`, `AppShadows.primaryGlow`.
- الخطوط: `Theme.of(context).textTheme.headlineMedium` (تتغير تلقائي EN/AR حسب اللغة).
- **ملحوظة**: الـ Arabic style عنده 7 styles بس في Figma، فالـ slots الناقصة (`bodyLarge`, `label`, `overline`) بتاخد أقرب style. ده متوثق في `app_typography.dart`.

## 8. الـ State والـ Cubit

- كل Cubit بيعمل emit لـ state واحد (`Initial`, `Loading`, `Loaded`, `Error`) باستخدام freezed unions.
- الـ Cubit بيستدعي Use case بس، ما بيعرفش الـ endpoint.
- الـ Cart وAuth بيتعملوا registered كـ **singletons** على مستوى التطبيق (`BlocProvider` فوق `MaterialApp`).

## 9. الترتيب المقترح للتنفيذ (أول مرحلة)

1. `main.dart`/`app.dart` + Theme (تم) + Router skeleton.
2. **Splash**: animation اللوجو + check الـ token + first-run.
3. **Onboarding**: 3 صفحات، PageView، indicator، animations، زرار Skip/Next.
4. Auth (login/register) → Home.

## 10. المتطلبات قبل البدء

- Flutter SDK 3.27+ (الـ pubspec عندك `sdk ^3.13.4`).
- ثبّت الـ packages اللي فوق، و`google_fonts` مطلوب عشان `app_typography.dart`.
- Backend شغال: `npm run local` (أو Docker) والـ base URL حسب الجهاز.
