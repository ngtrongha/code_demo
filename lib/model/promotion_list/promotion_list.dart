// To parse this JSON data, do
//
//     final promotionList = promotionListFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

import '../system_config/system_config.dart';

part 'promotion_list.freezed.dart';
part 'promotion_list.g.dart';

@freezed
class PromotionList with _$PromotionList {
  const factory PromotionList({
    @Default([]) final List<DiscountList> discount_list,
    @Default(0) final int total_count,
  }) = _PromotionList;

  factory PromotionList.fromJson(Map<String, dynamic> json) =>
      _$PromotionListFromJson(json);
}

@freezed
class DiscountList with _$DiscountList {
  const factory DiscountList({
    @Default(-1) final int id,
    @Default('') final String image,
    @Default('') final String name,
    @Default(0) final double max_order_value,
    @Default(0) final double discount_value,
    @Default('') final String discount_type_key,
    @Default('') final String scope_object_key,
    @Default(0) final int amount,
    @Default(0) final int amount_used,
    @Default('') final String description,
    DateTime? from_date,
    DateTime? to_date,
    @Default(false) final bool active,
    @Default(-1) final int type_id,
    @Default('#FFFFFF') final String type_color,
    @Default('') final String type_code,
    @Default('') final String type_name,
    @Default(false) final bool timeout,
    @Default('') final String approved_key,
  }) = _DiscountList;

  factory DiscountList.fromJson(Map<String, dynamic> json) =>
      _$DiscountListFromJson(json);
}

const listDiscountTime = [
  SystemConfig(
      name: 'Khoảng thời gian cố định',
      key: 'agent.discount.type.time.dynamic'),
  SystemConfig(
      name: 'Tùy chọn sau khi thu thập', key: 'agent.discount.type.time.fixed'),
];
const listDiscountScope = [
  SystemConfig(name: 'Tất cả dịch vụ', key: 'discount.scope.all'),
  SystemConfig(name: 'Nhóm dịch vụ', key: 'discount.scope.servicegroup'),
  SystemConfig(name: 'Dịch vụ', key: 'discount.scope.service'),
];
const listDiscountType = [
  SystemConfig(name: 'Giảm giá cố định', key: 'discount.type.value'),
  SystemConfig(name: 'Giảm giá theo phần trăm', key: 'discount.type.percent'),
];
