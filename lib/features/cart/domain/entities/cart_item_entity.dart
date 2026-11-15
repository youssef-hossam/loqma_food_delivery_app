class CartItemEntity {
  final String id;
  final String dishId;
  final String name;
  final String? imageUrl;
  final List<String> optionNames;
  final int quantity;
  final String? notes;
  final int unitPrice;
  final int total;

  const CartItemEntity({
    required this.id,
    required this.dishId,
    required this.name,
    this.imageUrl,
    required this.optionNames,
    required this.quantity,
    this.notes,
    required this.unitPrice,
    required this.total,
  });
}
