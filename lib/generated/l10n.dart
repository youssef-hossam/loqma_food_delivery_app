// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `loqma`
  String get appName {
    return Intl.message(
      'loqma',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Get started`
  String get getStarted {
    return Intl.message(
      'Get started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `See all`
  String get seeAll {
    return Intl.message(
      'See all',
      name: 'seeAll',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `Clear all`
  String get clearAll {
    return Intl.message(
      'Clear all',
      name: 'clearAll',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get change {
    return Intl.message(
      'Change',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get retry {
    return Intl.message(
      'Try again',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Required`
  String get requiredLabel {
    return Intl.message(
      'Required',
      name: 'requiredLabel',
      desc: '',
      args: [],
    );
  }

  /// `Optional`
  String get optionalLabel {
    return Intl.message(
      'Optional',
      name: 'optionalLabel',
      desc: '',
      args: [],
    );
  }

  /// `Pick {count}`
  String pickCount(int count) {
    return Intl.message(
      'Pick $count',
      name: 'pickCount',
      desc: '',
      args: [count],
    );
  }

  /// `Up to {count}`
  String upToCount(int count) {
    return Intl.message(
      'Up to $count',
      name: 'upToCount',
      desc: '',
      args: [count],
    );
  }

  /// `EGP {amount}`
  String price(String amount) {
    return Intl.message(
      'EGP $amount',
      name: 'price',
      desc: 'A price, amount is already formatted',
      args: [amount],
    );
  }

  /// `+ EGP {amount}`
  String extraPrice(String amount) {
    return Intl.message(
      '+ EGP $amount',
      name: 'extraPrice',
      desc: '',
      args: [amount],
    );
  }

  /// `{min}–{max} min`
  String minutesRange(int min, int max) {
    return Intl.message(
      '$min–$max min',
      name: 'minutesRange',
      desc: '',
      args: [min, max],
    );
  }

  /// `{minutes} min`
  String minutesShort(int minutes) {
    return Intl.message(
      '$minutes min',
      name: 'minutesShort',
      desc: '',
      args: [minutes],
    );
  }

  /// `minutes`
  String get minutes {
    return Intl.message(
      'minutes',
      name: 'minutes',
      desc: '',
      args: [],
    );
  }

  /// `delivery`
  String get delivery {
    return Intl.message(
      'delivery',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `EGP {amount} delivery`
  String deliveryFeeShort(String amount) {
    return Intl.message(
      'EGP $amount delivery',
      name: 'deliveryFeeShort',
      desc: '',
      args: [amount],
    );
  }

  /// `Free delivery`
  String get freeDelivery {
    return Intl.message(
      'Free delivery',
      name: 'freeDelivery',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, =1{1 item} other{{count} items}}`
  String itemsCount(int count) {
    return Intl.plural(
      count,
      one: '1 item',
      other: '$count items',
      name: 'itemsCount',
      desc: '',
      args: [count],
    );
  }

  /// `عربي`
  String get languageSwitchLabel {
    return Intl.message(
      'عربي',
      name: 'languageSwitchLabel',
      desc: 'Label on the language toggle: shows the language you switch TO',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get languageEnglish {
    return Intl.message(
      'English',
      name: 'languageEnglish',
      desc: '',
      args: [],
    );
  }

  /// `العربية`
  String get languageArabic {
    return Intl.message(
      'العربية',
      name: 'languageArabic',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong. Please try again.`
  String get errorGeneric {
    return Intl.message(
      'Something went wrong. Please try again.',
      name: 'errorGeneric',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get errorNoInternet {
    return Intl.message(
      'No internet connection',
      name: 'errorNoInternet',
      desc: '',
      args: [],
    );
  }

  /// `Your session expired. Please log in again.`
  String get errorSessionExpired {
    return Intl.message(
      'Your session expired. Please log in again.',
      name: 'errorSessionExpired',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get validationRequired {
    return Intl.message(
      'This field is required',
      name: 'validationRequired',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid email`
  String get validationEmail {
    return Intl.message(
      'Enter a valid email',
      name: 'validationEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid phone number`
  String get validationPhone {
    return Intl.message(
      'Enter a valid phone number',
      name: 'validationPhone',
      desc: '',
      args: [],
    );
  }

  /// `Use 8+ characters with a letter and a number`
  String get validationPasswordWeak {
    return Intl.message(
      'Use 8+ characters with a letter and a number',
      name: 'validationPasswordWeak',
      desc: '',
      args: [],
    );
  }

  /// `+{count} restaurants`
  String onboardingRestaurantsCount(int count) {
    return Intl.message(
      '+$count restaurants',
      name: 'onboardingRestaurantsCount',
      desc: '',
      args: [count],
    );
  }

  /// `All your cravings,\nin one app`
  String get onboardingDiscoverTitle {
    return Intl.message(
      'All your cravings,\nin one app',
      name: 'onboardingDiscoverTitle',
      desc: '',
      args: [],
    );
  }

  /// `Burgers, koshari, sushi or kunafa — discover the best restaurants around you.`
  String get onboardingDiscoverBody {
    return Intl.message(
      'Burgers, koshari, sushi or kunafa — discover the best restaurants around you.',
      name: 'onboardingDiscoverBody',
      desc: '',
      args: [],
    );
  }

  /// `Make every bite\nyours`
  String get onboardingCustomizeTitle {
    return Intl.message(
      'Make every bite\nyours',
      name: 'onboardingCustomizeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Pick your size, add extras, leave a note. We send it exactly how you like it.`
  String get onboardingCustomizeBody {
    return Intl.message(
      'Pick your size, add extras, leave a note. We send it exactly how you like it.',
      name: 'onboardingCustomizeBody',
      desc: '',
      args: [],
    );
  }

  /// `Track your order\nlive to your door`
  String get onboardingTrackTitle {
    return Intl.message(
      'Track your order\nlive to your door',
      name: 'onboardingTrackTitle',
      desc: '',
      args: [],
    );
  }

  /// `Watch your rider on the map in real time, and get notified the moment they arrive.`
  String get onboardingTrackBody {
    return Intl.message(
      'Watch your rider on the map in real time, and get notified the moment they arrive.',
      name: 'onboardingTrackBody',
      desc: '',
      args: [],
    );
  }

  /// `Arriving in {minutes} min`
  String onboardingArrivingIn(int minutes) {
    return Intl.message(
      'Arriving in $minutes min',
      name: 'onboardingArrivingIn',
      desc: '',
      args: [minutes],
    );
  }

  /// `Your favorite food,\ndelivered hot & fast`
  String get onboardingWelcomeTitle {
    return Intl.message(
      'Your favorite food,\ndelivered hot & fast',
      name: 'onboardingWelcomeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Order from the best restaurants around you and track your rider live, right to your door.`
  String get onboardingWelcomeBody {
    return Intl.message(
      'Order from the best restaurants around you and track your rider live, right to your door.',
      name: 'onboardingWelcomeBody',
      desc: '',
      args: [],
    );
  }

  /// `Super fast`
  String get superFast {
    return Intl.message(
      'Super fast',
      name: 'superFast',
      desc: '',
      args: [],
    );
  }

  /// `Avg. {minutes} min`
  String avgMinutes(int minutes) {
    return Intl.message(
      'Avg. $minutes min',
      name: 'avgMinutes',
      desc: '',
      args: [minutes],
    );
  }

  /// `{rating} rating`
  String ratingLabel(String rating) {
    return Intl.message(
      '$rating rating',
      name: 'ratingLabel',
      desc: '',
      args: [rating],
    );
  }

  /// `Welcome back!`
  String get welcomeBack {
    return Intl.message(
      'Welcome back!',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Log in to continue ordering your favorite meals.`
  String get loginSubtitle {
    return Intl.message(
      'Log in to continue ordering your favorite meals.',
      name: 'loginSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `name@example.com`
  String get emailHint {
    return Intl.message(
      'name@example.com',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get logIn {
    return Intl.message(
      'Log in',
      name: 'logIn',
      desc: '',
      args: [],
    );
  }

  /// `or continue with`
  String get orContinueWith {
    return Intl.message(
      'or continue with',
      name: 'orContinueWith',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get continueWithGoogle {
    return Intl.message(
      'Google',
      name: 'continueWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Apple`
  String get continueWithApple {
    return Intl.message(
      'Apple',
      name: 'continueWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get noAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'noAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create your account`
  String get createYourAccount {
    return Intl.message(
      'Create your account',
      name: 'createYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Join loqma and get 50% off your first order with {code}.`
  String registerSubtitle(String code) {
    return Intl.message(
      'Join loqma and get 50% off your first order with $code.',
      name: 'registerSubtitle',
      desc: '',
      args: [code],
    );
  }

  /// `Full name`
  String get fullName {
    return Intl.message(
      'Full name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `This email is already registered. Log in instead?`
  String get emailAlreadyRegistered {
    return Intl.message(
      'This email is already registered. Log in instead?',
      name: 'emailAlreadyRegistered',
      desc: '',
      args: [],
    );
  }

  /// `8+ characters`
  String get passwordRuleLength {
    return Intl.message(
      '8+ characters',
      name: 'passwordRuleLength',
      desc: '',
      args: [],
    );
  }

  /// `A letter`
  String get passwordRuleLetter {
    return Intl.message(
      'A letter',
      name: 'passwordRuleLetter',
      desc: '',
      args: [],
    );
  }

  /// `A number`
  String get passwordRuleNumber {
    return Intl.message(
      'A number',
      name: 'passwordRuleNumber',
      desc: '',
      args: [],
    );
  }

  /// `I agree to the {terms} and {privacy}`
  String termsAgreement(String terms, String privacy) {
    return Intl.message(
      'I agree to the $terms and $privacy',
      name: 'termsAgreement',
      desc: '',
      args: [terms, privacy],
    );
  }

  /// `Terms of Service`
  String get termsOfService {
    return Intl.message(
      'Terms of Service',
      name: 'termsOfService',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get createAccount {
    return Intl.message(
      'Create account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Deliver to`
  String get deliverTo {
    return Intl.message(
      'Deliver to',
      name: 'deliverTo',
      desc: '',
      args: [],
    );
  }

  /// `Hey {name},\nwhat are you craving?`
  String homeGreeting(String name) {
    return Intl.message(
      'Hey $name,\nwhat are you craving?',
      name: 'homeGreeting',
      desc: '',
      args: [name],
    );
  }

  /// `Search dishes, restaurants…`
  String get searchHint {
    return Intl.message(
      'Search dishes, restaurants…',
      name: 'searchHint',
      desc: '',
      args: [],
    );
  }

  /// `LIMITED OFFER`
  String get limitedOffer {
    return Intl.message(
      'LIMITED OFFER',
      name: 'limitedOffer',
      desc: '',
      args: [],
    );
  }

  /// `{percent}% off your\nfirst order`
  String promoFirstOrder(int percent) {
    return Intl.message(
      '$percent% off your\nfirst order',
      name: 'promoFirstOrder',
      desc: '',
      args: [percent],
    );
  }

  /// `Code: {code}`
  String promoCode(String code) {
    return Intl.message(
      'Code: $code',
      name: 'promoCode',
      desc: '',
      args: [code],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Popular near you`
  String get popularNearYou {
    return Intl.message(
      'Popular near you',
      name: 'popularNearYou',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get navHome {
    return Intl.message(
      'Home',
      name: 'navHome',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get navSearch {
    return Intl.message(
      'Search',
      name: 'navSearch',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get navOrders {
    return Intl.message(
      'Orders',
      name: 'navOrders',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get navProfile {
    return Intl.message(
      'Profile',
      name: 'navProfile',
      desc: '',
      args: [],
    );
  }

  /// `Recent searches`
  String get recentSearches {
    return Intl.message(
      'Recent searches',
      name: 'recentSearches',
      desc: '',
      args: [],
    );
  }

  /// `Popular cuisines`
  String get popularCuisines {
    return Intl.message(
      'Popular cuisines',
      name: 'popularCuisines',
      desc: '',
      args: [],
    );
  }

  /// `{count} places`
  String placesCount(String count) {
    return Intl.message(
      '$count places',
      name: 'placesCount',
      desc: 'count can be like 120+',
      args: [count],
    );
  }

  /// `Trending now`
  String get trendingNow {
    return Intl.message(
      'Trending now',
      name: 'trendingNow',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get filterAll {
    return Intl.message(
      'All',
      name: 'filterAll',
      desc: '',
      args: [],
    );
  }

  /// `Restaurants`
  String get filterRestaurants {
    return Intl.message(
      'Restaurants',
      name: 'filterRestaurants',
      desc: '',
      args: [],
    );
  }

  /// `Dishes`
  String get filterDishes {
    return Intl.message(
      'Dishes',
      name: 'filterDishes',
      desc: '',
      args: [],
    );
  }

  /// `★ {rating}+`
  String filterRating(String rating) {
    return Intl.message(
      '★ $rating+',
      name: 'filterRating',
      desc: '',
      args: [rating],
    );
  }

  /// `{count, plural, =1{1 result for “{query}”} other{{count} results for “{query}”}}`
  String searchResultsCount(int count, String query) {
    return Intl.plural(
      count,
      one: '1 result for “$query”',
      other: '$count results for “$query”',
      name: 'searchResultsCount',
      desc: '',
      args: [count, query],
    );
  }

  /// `No results for “{query}”`
  String searchNoResults(String query) {
    return Intl.message(
      'No results for “$query”',
      name: 'searchNoResults',
      desc: '',
      args: [query],
    );
  }

  /// `Restaurants`
  String get restaurantsSection {
    return Intl.message(
      'Restaurants',
      name: 'restaurantsSection',
      desc: '',
      args: [],
    );
  }

  /// `Dishes`
  String get dishesSection {
    return Intl.message(
      'Dishes',
      name: 'dishesSection',
      desc: '',
      args: [],
    );
  }

  /// `Open now`
  String get openNow {
    return Intl.message(
      'Open now',
      name: 'openNow',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Closed`
  String get closed {
    return Intl.message(
      'Closed',
      name: 'closed',
      desc: '',
      args: [],
    );
  }

  /// `{count} reviews`
  String reviewsCount(String count) {
    return Intl.message(
      '$count reviews',
      name: 'reviewsCount',
      desc: 'count is formatted, e.g. 1.2k',
      args: [count],
    );
  }

  /// `{percent}% off on orders above EGP {amount}`
  String offerAbove(int percent, String amount) {
    return Intl.message(
      '$percent% off on orders above EGP $amount',
      name: 'offerAbove',
      desc: '',
      args: [percent, amount],
    );
  }

  /// `Popular`
  String get popular {
    return Intl.message(
      'Popular',
      name: 'popular',
      desc: '',
      args: [],
    );
  }

  /// `Bestseller`
  String get bestseller {
    return Intl.message(
      'Bestseller',
      name: 'bestseller',
      desc: '',
      args: [],
    );
  }

  /// `Spicy`
  String get spicy {
    return Intl.message(
      'Spicy',
      name: 'spicy',
      desc: '',
      args: [],
    );
  }

  /// `View cart`
  String get viewCart {
    return Intl.message(
      'View cart',
      name: 'viewCart',
      desc: '',
      args: [],
    );
  }

  /// `({reviews}) · {kcal} kcal`
  String caloriesInfo(int reviews, int kcal) {
    return Intl.message(
      '($reviews) · $kcal kcal',
      name: 'caloriesInfo',
      desc: '',
      args: [reviews, kcal],
    );
  }

  /// `Special instructions`
  String get specialInstructions {
    return Intl.message(
      'Special instructions',
      name: 'specialInstructions',
      desc: '',
      args: [],
    );
  }

  /// `e.g. no pickles, sauce on the side`
  String get specialInstructionsHint {
    return Intl.message(
      'e.g. no pickles, sauce on the side',
      name: 'specialInstructionsHint',
      desc: '',
      args: [],
    );
  }

  /// `Add · EGP {amount}`
  String addToCartWithPrice(String amount) {
    return Intl.message(
      'Add · EGP $amount',
      name: 'addToCartWithPrice',
      desc: '',
      args: [amount],
    );
  }

  /// `My Cart`
  String get myCart {
    return Intl.message(
      'My Cart',
      name: 'myCart',
      desc: '',
      args: [],
    );
  }

  /// `Delivery in {min}–{max} min`
  String deliveryIn(int min, int max) {
    return Intl.message(
      'Delivery in $min–$max min',
      name: 'deliveryIn',
      desc: '',
      args: [min, max],
    );
  }

  /// `+ Add items`
  String get addItems {
    return Intl.message(
      '+ Add items',
      name: 'addItems',
      desc: '',
      args: [],
    );
  }

  /// `{code} applied`
  String promoApplied(String code) {
    return Intl.message(
      '$code applied',
      name: 'promoApplied',
      desc: '',
      args: [code],
    );
  }

  /// `You saved EGP {amount} on this order`
  String youSaved(String amount) {
    return Intl.message(
      'You saved EGP $amount on this order',
      name: 'youSaved',
      desc: '',
      args: [amount],
    );
  }

  /// `Promo code`
  String get promoCodeHint {
    return Intl.message(
      'Promo code',
      name: 'promoCodeHint',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get subtotal {
    return Intl.message(
      'Subtotal',
      name: 'subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Delivery fee`
  String get deliveryFee {
    return Intl.message(
      'Delivery fee',
      name: 'deliveryFee',
      desc: '',
      args: [],
    );
  }

  /// `Discount ({code})`
  String discountWithCode(String code) {
    return Intl.message(
      'Discount ($code)',
      name: 'discountWithCode',
      desc: '',
      args: [code],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Total (incl. delivery)`
  String get totalInclDelivery {
    return Intl.message(
      'Total (incl. delivery)',
      name: 'totalInclDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Go to checkout`
  String get goToCheckout {
    return Intl.message(
      'Go to checkout',
      name: 'goToCheckout',
      desc: '',
      args: [],
    );
  }

  /// `Your cart is empty`
  String get cartEmpty {
    return Intl.message(
      'Your cart is empty',
      name: 'cartEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Delivery time`
  String get deliveryTime {
    return Intl.message(
      'Delivery time',
      name: 'deliveryTime',
      desc: '',
      args: [],
    );
  }

  /// `Standard`
  String get deliveryStandard {
    return Intl.message(
      'Standard',
      name: 'deliveryStandard',
      desc: '',
      args: [],
    );
  }

  /// `Schedule`
  String get deliverySchedule {
    return Intl.message(
      'Schedule',
      name: 'deliverySchedule',
      desc: '',
      args: [],
    );
  }

  /// `Pick a time`
  String get pickATime {
    return Intl.message(
      'Pick a time',
      name: 'pickATime',
      desc: '',
      args: [],
    );
  }

  /// `Payment method`
  String get paymentMethod {
    return Intl.message(
      'Payment method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Expires {date}`
  String cardExpires(String date) {
    return Intl.message(
      'Expires $date',
      name: 'cardExpires',
      desc: '',
      args: [date],
    );
  }

  /// `Cash on delivery`
  String get cashOnDelivery {
    return Intl.message(
      'Cash on delivery',
      name: 'cashOnDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Pay the rider at your door`
  String get payRiderAtDoor {
    return Intl.message(
      'Pay the rider at your door',
      name: 'payRiderAtDoor',
      desc: '',
      args: [],
    );
  }

  /// `Add new card`
  String get addNewCard {
    return Intl.message(
      'Add new card',
      name: 'addNewCard',
      desc: '',
      args: [],
    );
  }

  /// `Order summary`
  String get orderSummary {
    return Intl.message(
      'Order summary',
      name: 'orderSummary',
      desc: '',
      args: [],
    );
  }

  /// `Place order`
  String get placeOrder {
    return Intl.message(
      'Place order',
      name: 'placeOrder',
      desc: '',
      args: [],
    );
  }

  /// `{km} km away`
  String distanceAway(String km) {
    return Intl.message(
      '$km km away',
      name: 'distanceAway',
      desc: '',
      args: [km],
    );
  }

  /// `Order #{number}`
  String orderNumber(String number) {
    return Intl.message(
      'Order #$number',
      name: 'orderNumber',
      desc: '',
      args: [number],
    );
  }

  /// `Arriving in`
  String get arrivingIn {
    return Intl.message(
      'Arriving in',
      name: 'arrivingIn',
      desc: '',
      args: [],
    );
  }

  /// `Placed`
  String get statusPlaced {
    return Intl.message(
      'Placed',
      name: 'statusPlaced',
      desc: '',
      args: [],
    );
  }

  /// `Confirmed`
  String get statusConfirmed {
    return Intl.message(
      'Confirmed',
      name: 'statusConfirmed',
      desc: '',
      args: [],
    );
  }

  /// `Preparing`
  String get statusPreparing {
    return Intl.message(
      'Preparing',
      name: 'statusPreparing',
      desc: '',
      args: [],
    );
  }

  /// `Picked up`
  String get statusPickedUp {
    return Intl.message(
      'Picked up',
      name: 'statusPickedUp',
      desc: '',
      args: [],
    );
  }

  /// `On the way`
  String get statusOnTheWay {
    return Intl.message(
      'On the way',
      name: 'statusOnTheWay',
      desc: '',
      args: [],
    );
  }

  /// `Delivered`
  String get statusDelivered {
    return Intl.message(
      'Delivered',
      name: 'statusDelivered',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get statusCancelled {
    return Intl.message(
      'Cancelled',
      name: 'statusCancelled',
      desc: '',
      args: [],
    );
  }

  /// `My orders`
  String get myOrders {
    return Intl.message(
      'My orders',
      name: 'myOrders',
      desc: '',
      args: [],
    );
  }

  /// `Active ({count})`
  String activeOrdersTab(int count) {
    return Intl.message(
      'Active ($count)',
      name: 'activeOrdersTab',
      desc: '',
      args: [count],
    );
  }

  /// `Past orders`
  String get pastOrders {
    return Intl.message(
      'Past orders',
      name: 'pastOrders',
      desc: '',
      args: [],
    );
  }

  /// `Rider is on the way`
  String get riderOnTheWay {
    return Intl.message(
      'Rider is on the way',
      name: 'riderOnTheWay',
      desc: '',
      args: [],
    );
  }

  /// `Track live`
  String get trackLive {
    return Intl.message(
      'Track live',
      name: 'trackLive',
      desc: '',
      args: [],
    );
  }

  /// `Recent`
  String get recent {
    return Intl.message(
      'Recent',
      name: 'recent',
      desc: '',
      args: [],
    );
  }

  /// `Last 30 days`
  String get last30Days {
    return Intl.message(
      'Last 30 days',
      name: 'last30Days',
      desc: '',
      args: [],
    );
  }

  /// `Rate`
  String get rate {
    return Intl.message(
      'Rate',
      name: 'rate',
      desc: '',
      args: [],
    );
  }

  /// `Reorder`
  String get reorder {
    return Intl.message(
      'Reorder',
      name: 'reorder',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Saved`
  String get saved {
    return Intl.message(
      'Saved',
      name: 'saved',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get themeLight {
    return Intl.message(
      'Light',
      name: 'themeLight',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get themeDark {
    return Intl.message(
      'Dark',
      name: 'themeDark',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get themeSystem {
    return Intl.message(
      'System',
      name: 'themeSystem',
      desc: '',
      args: [],
    );
  }

  /// `My addresses`
  String get myAddresses {
    return Intl.message(
      'My addresses',
      name: 'myAddresses',
      desc: '',
      args: [],
    );
  }

  /// `{count} saved`
  String savedCount(int count) {
    return Intl.message(
      '$count saved',
      name: 'savedCount',
      desc: '',
      args: [count],
    );
  }

  /// `Payment methods`
  String get paymentMethods {
    return Intl.message(
      'Payment methods',
      name: 'paymentMethods',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `On`
  String get toggleOn {
    return Intl.message(
      'On',
      name: 'toggleOn',
      desc: '',
      args: [],
    );
  }

  /// `Off`
  String get toggleOff {
    return Intl.message(
      'Off',
      name: 'toggleOff',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logOut {
    return Intl.message(
      'Log out',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
