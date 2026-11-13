class BannerEntity {
  final String id;
  final String title;
  final String subtitle;
  final String imageUrl;
  final String? restaurantId;
  final String? promoCode;

  const BannerEntity({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    this.restaurantId,
    this.promoCode,
  });
}
