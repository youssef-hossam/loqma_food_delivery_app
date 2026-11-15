class ApiConstants {
  // IP الكمبيوتر على الشبكة، عشان انت على فون حقيقي
  static const String baseUrl = 'http://192.168.1.12:3000/api/v1';
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String home = '/home';
  static const String restaurantDetails = '/restaurants/{id}';
  static const String restaurantMenu = '/restaurants/{id}/menu';
  static const String dishDetails = '/menu-items/{id}';
  static const String cart = '/cart';
  static const String cartItems = '/cart/items';
  static const String cartItem = '/cart/items/{id}';
}
