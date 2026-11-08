// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(count) => "Active (${count})";

  static String m1(amount) => "Add · EGP ${amount}";

  static String m2(minutes) => "Avg. ${minutes} min";

  static String m3(reviews, kcal) => "(${reviews}) · ${kcal} kcal";

  static String m4(date) => "Expires ${date}";

  static String m5(amount) => "EGP ${amount} delivery";

  static String m6(min, max) => "Delivery in ${min}–${max} min";

  static String m7(code) => "Discount (${code})";

  static String m8(km) => "${km} km away";

  static String m9(amount) => "+ EGP ${amount}";

  static String m10(rating) => "★ ${rating}+";

  static String m11(name) => "Hey ${name},\nwhat are you craving?";

  static String m12(count) => "${count} items";

  static String m13(min, max) => "${min}–${max} min";

  static String m14(minutes) => "${minutes} min";

  static String m15(percent, amount) =>
      "${percent}% off on orders above EGP ${amount}";

  static String m16(minutes) => "Arriving in ${minutes} min";

  static String m17(count) => "+${count} restaurants";

  static String m18(number) => "Order #${number}";

  static String m19(count) => "Pick ${count}";

  static String m20(count) => "${count} places";

  static String m21(amount) => "EGP ${amount}";

  static String m22(code) => "${code} applied";

  static String m23(code) => "Code: ${code}";

  static String m24(percent) => "${percent}% off your\nfirst order";

  static String m25(rating) => "${rating} rating";

  static String m26(code) =>
      "Join loqma and get 50% off your first order with ${code}.";

  static String m27(count) => "${count} reviews";

  static String m28(count) => "${count} saved";

  static String m29(query) => "No results for “${query}”";

  static String m30(count, query) => "${count} results for “${query}”";

  static String m31(terms, privacy) => "I agree to the ${terms} and ${privacy}";

  static String m32(count) => "Up to ${count}";

  static String m33(amount) => "You saved EGP ${amount} on this order";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "activeOrdersTab": m0,
        "addItems": MessageLookupByLibrary.simpleMessage("+ Add items"),
        "addNewCard": MessageLookupByLibrary.simpleMessage("Add new card"),
        "addToCartWithPrice": m1,
        "alreadyHaveAccount":
            MessageLookupByLibrary.simpleMessage("Already have an account?"),
        "appName": MessageLookupByLibrary.simpleMessage("loqma"),
        "apply": MessageLookupByLibrary.simpleMessage("Apply"),
        "arrivingIn": MessageLookupByLibrary.simpleMessage("Arriving in"),
        "avgMinutes": m2,
        "bestseller": MessageLookupByLibrary.simpleMessage("Bestseller"),
        "caloriesInfo": m3,
        "cardExpires": m4,
        "cartEmpty": MessageLookupByLibrary.simpleMessage("Your cart is empty"),
        "cashOnDelivery":
            MessageLookupByLibrary.simpleMessage("Cash on delivery"),
        "categories": MessageLookupByLibrary.simpleMessage("Categories"),
        "change": MessageLookupByLibrary.simpleMessage("Change"),
        "checkout": MessageLookupByLibrary.simpleMessage("Checkout"),
        "clear": MessageLookupByLibrary.simpleMessage("Clear"),
        "clearAll": MessageLookupByLibrary.simpleMessage("Clear all"),
        "closed": MessageLookupByLibrary.simpleMessage("Closed"),
        "continueWithApple": MessageLookupByLibrary.simpleMessage("Apple"),
        "continueWithGoogle": MessageLookupByLibrary.simpleMessage("Google"),
        "createAccount": MessageLookupByLibrary.simpleMessage("Create account"),
        "createYourAccount":
            MessageLookupByLibrary.simpleMessage("Create your account"),
        "deliverTo": MessageLookupByLibrary.simpleMessage("Deliver to"),
        "delivery": MessageLookupByLibrary.simpleMessage("delivery"),
        "deliveryFee": MessageLookupByLibrary.simpleMessage("Delivery fee"),
        "deliveryFeeShort": m5,
        "deliveryIn": m6,
        "deliverySchedule": MessageLookupByLibrary.simpleMessage("Schedule"),
        "deliveryStandard": MessageLookupByLibrary.simpleMessage("Standard"),
        "deliveryTime": MessageLookupByLibrary.simpleMessage("Delivery time"),
        "details": MessageLookupByLibrary.simpleMessage("Details"),
        "discountWithCode": m7,
        "dishesSection": MessageLookupByLibrary.simpleMessage("Dishes"),
        "distanceAway": m8,
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailAlreadyRegistered": MessageLookupByLibrary.simpleMessage(
            "This email is already registered. Log in instead?"),
        "emailHint": MessageLookupByLibrary.simpleMessage("name@example.com"),
        "errorGeneric": MessageLookupByLibrary.simpleMessage(
            "Something went wrong. Please try again."),
        "errorGenericTitle":
            MessageLookupByLibrary.simpleMessage("Something went wrong"),
        "errorLoginTitle":
            MessageLookupByLibrary.simpleMessage("Couldn\'t log you in"),
        "errorNetworkBody": MessageLookupByLibrary.simpleMessage(
            "Check your internet connection and try again."),
        "errorNetworkTitle":
            MessageLookupByLibrary.simpleMessage("No connection"),
        "errorNoInternet":
            MessageLookupByLibrary.simpleMessage("No internet connection"),
        "errorRateLimitedTitle":
            MessageLookupByLibrary.simpleMessage("Slow down a little"),
        "errorSessionExpired": MessageLookupByLibrary.simpleMessage(
            "Your session expired. Please log in again."),
        "extraPrice": m9,
        "favorites": MessageLookupByLibrary.simpleMessage("Favorites"),
        "filterAll": MessageLookupByLibrary.simpleMessage("All"),
        "filterDishes": MessageLookupByLibrary.simpleMessage("Dishes"),
        "filterRating": m10,
        "filterRestaurants":
            MessageLookupByLibrary.simpleMessage("Restaurants"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Forgot password?"),
        "freeDelivery": MessageLookupByLibrary.simpleMessage("Free delivery"),
        "fullName": MessageLookupByLibrary.simpleMessage("Full name"),
        "getStarted": MessageLookupByLibrary.simpleMessage("Get started"),
        "goToCheckout": MessageLookupByLibrary.simpleMessage("Go to checkout"),
        "gotIt": MessageLookupByLibrary.simpleMessage("Got it"),
        "homeGreeting": m11,
        "itemsCount": m12,
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "languageArabic": MessageLookupByLibrary.simpleMessage("العربية"),
        "languageEnglish": MessageLookupByLibrary.simpleMessage("English"),
        "languageSwitchLabel": MessageLookupByLibrary.simpleMessage("عربي"),
        "last30Days": MessageLookupByLibrary.simpleMessage("Last 30 days"),
        "limitedOffer": MessageLookupByLibrary.simpleMessage("LIMITED OFFER"),
        "logIn": MessageLookupByLibrary.simpleMessage("Log in"),
        "logOut": MessageLookupByLibrary.simpleMessage("Log out"),
        "loginSubtitle": MessageLookupByLibrary.simpleMessage(
            "Log in to continue ordering your favorite meals."),
        "minutes": MessageLookupByLibrary.simpleMessage("minutes"),
        "minutesRange": m13,
        "minutesShort": m14,
        "myAddresses": MessageLookupByLibrary.simpleMessage("My addresses"),
        "myCart": MessageLookupByLibrary.simpleMessage("My Cart"),
        "myOrders": MessageLookupByLibrary.simpleMessage("My orders"),
        "navHome": MessageLookupByLibrary.simpleMessage("Home"),
        "navOrders": MessageLookupByLibrary.simpleMessage("Orders"),
        "navProfile": MessageLookupByLibrary.simpleMessage("Profile"),
        "navSearch": MessageLookupByLibrary.simpleMessage("Search"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "noAccount":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account?"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "offerAbove": m15,
        "onboardingArrivingIn": m16,
        "onboardingCustomizeBody": MessageLookupByLibrary.simpleMessage(
            "Pick your size, add extras, leave a note. We send it exactly how you like it."),
        "onboardingCustomizeTitle":
            MessageLookupByLibrary.simpleMessage("Make every bite\n*yours*"),
        "onboardingDemoBacon":
            MessageLookupByLibrary.simpleMessage("+ Beef bacon"),
        "onboardingDemoCheddar":
            MessageLookupByLibrary.simpleMessage("+ Cheddar"),
        "onboardingDemoDish":
            MessageLookupByLibrary.simpleMessage("Classic Smash"),
        "onboardingDemoDouble":
            MessageLookupByLibrary.simpleMessage("Double patty"),
        "onboardingDemoNoPickles":
            MessageLookupByLibrary.simpleMessage("No pickles"),
        "onboardingDiscoverBody": MessageLookupByLibrary.simpleMessage(
            "Burgers, koshari, sushi or kunafa — discover the best restaurants around you."),
        "onboardingDiscoverTitle": MessageLookupByLibrary.simpleMessage(
            "All your *cravings*,\nin one app"),
        "onboardingRestaurantsCount": m17,
        "onboardingTrackBody": MessageLookupByLibrary.simpleMessage(
            "Watch your rider on the map in real time, and get notified the moment they arrive."),
        "onboardingTrackTitle": MessageLookupByLibrary.simpleMessage(
            "Track your order\n*live* to your door"),
        "onboardingWelcomeBody": MessageLookupByLibrary.simpleMessage(
            "Order from the best restaurants around you and track your rider live, right to your door."),
        "onboardingWelcomeTitle": MessageLookupByLibrary.simpleMessage(
            "Your favorite food,\ndelivered hot & fast"),
        "oneItem": MessageLookupByLibrary.simpleMessage("1 item"),
        "open": MessageLookupByLibrary.simpleMessage("Open"),
        "openNow": MessageLookupByLibrary.simpleMessage("Open now"),
        "optionalLabel": MessageLookupByLibrary.simpleMessage("Optional"),
        "orContinueWith":
            MessageLookupByLibrary.simpleMessage("or continue with"),
        "orderNumber": m18,
        "orderSummary": MessageLookupByLibrary.simpleMessage("Order summary"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordRuleLength":
            MessageLookupByLibrary.simpleMessage("8+ characters"),
        "passwordRuleLetter": MessageLookupByLibrary.simpleMessage("A letter"),
        "passwordRuleNumber": MessageLookupByLibrary.simpleMessage("A number"),
        "pastOrders": MessageLookupByLibrary.simpleMessage("Past orders"),
        "payRiderAtDoor":
            MessageLookupByLibrary.simpleMessage("Pay the rider at your door"),
        "paymentMethod": MessageLookupByLibrary.simpleMessage("Payment method"),
        "paymentMethods":
            MessageLookupByLibrary.simpleMessage("Payment methods"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Phone number"),
        "pickATime": MessageLookupByLibrary.simpleMessage("Pick a time"),
        "pickCount": m19,
        "placeOrder": MessageLookupByLibrary.simpleMessage("Place order"),
        "placesCount": m20,
        "popular": MessageLookupByLibrary.simpleMessage("Popular"),
        "popularCuisines":
            MessageLookupByLibrary.simpleMessage("Popular cuisines"),
        "popularNearYou":
            MessageLookupByLibrary.simpleMessage("Popular near you"),
        "price": m21,
        "privacyPolicy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "promoApplied": m22,
        "promoCode": m23,
        "promoCodeHint": MessageLookupByLibrary.simpleMessage("Promo code"),
        "promoFirstOrder": m24,
        "rate": MessageLookupByLibrary.simpleMessage("Rate"),
        "ratingLabel": m25,
        "recent": MessageLookupByLibrary.simpleMessage("Recent"),
        "recentSearches":
            MessageLookupByLibrary.simpleMessage("Recent searches"),
        "registerSubtitle": m26,
        "reorder": MessageLookupByLibrary.simpleMessage("Reorder"),
        "requiredLabel": MessageLookupByLibrary.simpleMessage("Required"),
        "restaurantsSection":
            MessageLookupByLibrary.simpleMessage("Restaurants"),
        "retry": MessageLookupByLibrary.simpleMessage("Try again"),
        "reviewsCount": m27,
        "riderOnTheWay":
            MessageLookupByLibrary.simpleMessage("Rider is on the way"),
        "saved": MessageLookupByLibrary.simpleMessage("Saved"),
        "savedCount": m28,
        "searchHint":
            MessageLookupByLibrary.simpleMessage("Search dishes, restaurants…"),
        "searchNoResults": m29,
        "searchResultsCount": m30,
        "seeAll": MessageLookupByLibrary.simpleMessage("See all"),
        "signUp": MessageLookupByLibrary.simpleMessage("Sign up"),
        "skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "specialInstructions":
            MessageLookupByLibrary.simpleMessage("Special instructions"),
        "specialInstructionsHint": MessageLookupByLibrary.simpleMessage(
            "e.g. no pickles, sauce on the side"),
        "spicy": MessageLookupByLibrary.simpleMessage("Spicy"),
        "statusCancelled": MessageLookupByLibrary.simpleMessage("Cancelled"),
        "statusConfirmed": MessageLookupByLibrary.simpleMessage("Confirmed"),
        "statusDelivered": MessageLookupByLibrary.simpleMessage("Delivered"),
        "statusOnTheWay": MessageLookupByLibrary.simpleMessage("On the way"),
        "statusPickedUp": MessageLookupByLibrary.simpleMessage("Picked up"),
        "statusPlaced": MessageLookupByLibrary.simpleMessage("Placed"),
        "statusPreparing": MessageLookupByLibrary.simpleMessage("Preparing"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Subtotal"),
        "superFast": MessageLookupByLibrary.simpleMessage("Super fast"),
        "termsAgreement": m31,
        "termsOfService":
            MessageLookupByLibrary.simpleMessage("Terms of Service"),
        "theme": MessageLookupByLibrary.simpleMessage("Theme"),
        "themeDark": MessageLookupByLibrary.simpleMessage("Dark"),
        "themeLight": MessageLookupByLibrary.simpleMessage("Light"),
        "themeSystem": MessageLookupByLibrary.simpleMessage("System"),
        "toggleOff": MessageLookupByLibrary.simpleMessage("Off"),
        "toggleOn": MessageLookupByLibrary.simpleMessage("On"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "totalInclDelivery":
            MessageLookupByLibrary.simpleMessage("Total (incl. delivery)"),
        "trackLive": MessageLookupByLibrary.simpleMessage("Track live"),
        "trendingNow": MessageLookupByLibrary.simpleMessage("Trending now"),
        "upToCount": m32,
        "validationEmail":
            MessageLookupByLibrary.simpleMessage("Enter a valid email"),
        "validationName": MessageLookupByLibrary.simpleMessage("Name should be at least 2 characters"),
        "validationTerms": MessageLookupByLibrary.simpleMessage("Please accept the terms to continue"),
        "validationPasswordWeak": MessageLookupByLibrary.simpleMessage(
            "Use 8+ characters with a letter and a number"),
        "validationPhone":
            MessageLookupByLibrary.simpleMessage("Enter a valid phone number"),
        "validationRequired":
            MessageLookupByLibrary.simpleMessage("This field is required"),
        "viewCart": MessageLookupByLibrary.simpleMessage("View cart"),
        "welcomeBack": MessageLookupByLibrary.simpleMessage("Welcome back!"),
        "youSaved": m33
      };
}
