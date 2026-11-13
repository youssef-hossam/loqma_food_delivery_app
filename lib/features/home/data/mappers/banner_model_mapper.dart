import 'package:loqma_food_delivery_app/features/home/data/models/banner_model.dart';
import 'package:loqma_food_delivery_app/features/home/domain/entities/banner_entity.dart';

extension BannerModelMapper on BannerModel {
  BannerEntity toEntity() => BannerEntity(
    id: id,
    imageUrl: imageUrl,
    title: title,
    subtitle: subtitle,
    promoCode: promoCode,
    restaurantId: restaurantId,
  );
}
