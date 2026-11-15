class RestaurantEntity {
  final String id;
  final String name;
  final String cuisine;
  final String? logoUrl;
  final String? coverUrl;
  final double rating;
  final int ratingCount;
  final int deliveryFee;
  final int? freeDeliveryAbove;
  final int minDeliveryTime; // من deliveryTime.min
  final int maxDeliveryTime; // من deliveryTime.max
  final bool isOpen;
  final bool isFavorite;
  final String? description;
  final String? address;

  const RestaurantEntity({
    required this.id,
    required this.name,
    required this.cuisine,
    this.logoUrl,
    this.coverUrl,
    required this.rating,
    required this.ratingCount,
    required this.deliveryFee,
    this.freeDeliveryAbove,
    required this.minDeliveryTime,
    required this.maxDeliveryTime,
    required this.isOpen,
    required this.isFavorite,
    this.description,
    this.address,
  });

  // الـ badge بتاع "توصيل مجاني" في الكارت
  bool get hasFreeDelivery => deliveryFee == 0;
}
