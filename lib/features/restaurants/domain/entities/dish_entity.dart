class DishEntity {
  final String id;
  final String restaurantId;
  final String? restaurantName;
  final String name;
  final String description;
  final int price;
  final String? imageUrl;
  final String? tag;
  final bool isAvailable;
  final bool hasOptions;

  const DishEntity({
    required this.id,
    required this.restaurantId,
    this.restaurantName,
    required this.name,
    required this.description,
    required this.price,
    this.imageUrl,
    this.tag,
    required this.isAvailable,
    required this.hasOptions,
  });
}
