// To parse this JSON data, do
//
//     final customerPromotion = customerPromotionFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'customer_promotion.freezed.dart';
part 'customer_promotion.g.dart';

@freezed
class CustomerPromotion with _$CustomerPromotion {
  const factory CustomerPromotion({
    @Default([]) final List<CustomerVoucherList> customer_voucher_list,
    @Default(0) final int total_count,
  }) = _CustomerPromotion;

  factory CustomerPromotion.fromJson(Map<String, dynamic> json) =>
      _$CustomerPromotionFromJson(json);
}

@freezed
class CustomerVoucherList with _$CustomerVoucherList {
  const factory CustomerVoucherList({
    @Default(-1) final int id,
    @Default(-1) final int booking_id,
    @Default('') final String avatar,
    @Default('') final String name,
    @Default('') final String phone,
    @Default(0) final double total_discount,
    @Default('') final String email,
    @Default('') final String status,
    @Default('') final String status_text,
    @Default('#FFFFFF') final String status_color,
    final DateTime? create_date,
    final DateTime? used_date,
    final DateTime? status_date,
  }) = _CustomerVoucherList;

  factory CustomerVoucherList.fromJson(Map<String, dynamic> json) =>
      _$CustomerVoucherListFromJson(json);
}
