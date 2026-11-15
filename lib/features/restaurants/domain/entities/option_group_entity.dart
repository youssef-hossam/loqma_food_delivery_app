import 'package:loqma_food_delivery_app/features/restaurants/domain/entities/option_entity.dart';

class OptionGroupEntity {
  final String id;
  final String name;
  final bool isRequired;
  final int minSelect;
  final int maxSelect;
  final List<OptionEntity> options;

  const OptionGroupEntity({
    required this.id,
    required this.name,
    required this.isRequired,
    required this.minSelect,
    required this.maxSelect,
    required this.options,
  });

  // One choice only (like size) -> radio buttons, otherwise checkboxes
  bool get isSingleChoice => maxSelect == 1;
}
